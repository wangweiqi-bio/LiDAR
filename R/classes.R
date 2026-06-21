#DataClass----
setClassUnion("AnyMatrix", c("matrix", "Matrix"))

setClass("Data",
         slots = c(
           data = "AnyMatrix",
           ligand_exp = "AnyMatrix",
           receptor_exp = "AnyMatrix"
         ))

setClass("ImputationData",
         slots = c(
           data = "AnyMatrix",
           ligand_exp = "AnyMatrix",
           receptor_exp = "AnyMatrix"
         ))

setClass("Image",
         slots = c(
           pos = "data.frame",
           dist = "AnyMatrix",
           dist_bin_all = "AnyMatrix"
         ))


setClass("Coembedding",
         slots = c(
           cell_embedding = "AnyMatrix",
           gene_embedding = "AnyMatrix",
           nets = "list",
           n_list = "numeric"
         ))

setClass("Diffusion",
         slots = c(
           ligand_act = "AnyMatrix",
           ligand_dist = "array",
           ligand_diff = "data.frame",
           ligand_conc = "AnyMatrix",
           dist_threshold = "numeric",
           bin = "numeric",
           include_self = "logical",
           failed_ligand = "character"
         ))

setClass("Lidarscore",
         slots = c(
           aggregated_score = "AnyMatrix",
           pairwise_score = "list",
           sender_score = "AnyMatrix",
           receiver_score = "AnyMatrix"
         ))

setClass("DB",
         slots = c(
           ltm = "AnyMatrix",
           lr_list = "data.frame",
           ligandname = "character",
           receptorname = "character",
           nligand = "integer",
           nreceptor = "integer"
         ))

setClass("LidarData",
         slots = c(
           Data = "Data",
           ImputationData = "ImputationData",
           Image = "Image",
           Coembedding = "Coembedding",
           Diffusion = "Diffusion",
           Lidarscore = "Lidarscore",
           DB = "DB",
           cellname = "character",
           genename = "character",
           ncell = "integer",
           ngene = "integer"
         ))
