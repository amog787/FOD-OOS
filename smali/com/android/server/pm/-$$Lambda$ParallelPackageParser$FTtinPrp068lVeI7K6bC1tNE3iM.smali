.class public final synthetic Lcom/android/server/pm/-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ParallelPackageParser;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM;->f$0:Lcom/android/server/pm/ParallelPackageParser;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM;->f$1:Ljava/io/File;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM;->f$0:Lcom/android/server/pm/ParallelPackageParser;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM;->f$1:Ljava/io/File;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ParallelPackageParser;->lambda$submit$0$ParallelPackageParser(Ljava/io/File;I)V

    return-void
.end method
