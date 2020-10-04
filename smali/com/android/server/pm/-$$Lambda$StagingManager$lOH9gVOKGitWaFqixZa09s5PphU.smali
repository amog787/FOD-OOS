.class public final synthetic Lcom/android/server/pm/-$$Lambda$StagingManager$lOH9gVOKGitWaFqixZa09s5PphU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$lOH9gVOKGitWaFqixZa09s5PphU;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$lOH9gVOKGitWaFqixZa09s5PphU;->f$0:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0, p1}, Lcom/android/server/pm/StagingManager;->lambda$sessionContains$4(Ljava/util/function/Predicate;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p1

    return p1
.end method
