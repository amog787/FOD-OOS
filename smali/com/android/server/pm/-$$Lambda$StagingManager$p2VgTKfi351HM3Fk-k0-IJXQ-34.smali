.class public final synthetic Lcom/android/server/pm/-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/StagingManager;

.field public final synthetic f$1:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34;->f$0:Lcom/android/server/pm/StagingManager;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34;->f$1:Lcom/android/server/pm/PackageInstallerSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34;->f$0:Lcom/android/server/pm/StagingManager;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$p2VgTKfi351HM3Fk-k0-IJXQ-34;->f$1:Lcom/android/server/pm/PackageInstallerSession;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/StagingManager;->lambda$verifyApksInSession$2$StagingManager(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/Intent;)V

    return-void
.end method
