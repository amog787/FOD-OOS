.class public final synthetic Lcom/android/server/pm/-$$Lambda$StagingManager$BE6qQjRTVtd2eql5RkbIXPjyDYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/StagingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/StagingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$BE6qQjRTVtd2eql5RkbIXPjyDYY;->f$0:Lcom/android/server/pm/StagingManager;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$BE6qQjRTVtd2eql5RkbIXPjyDYY;->f$0:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/StagingManager;->lambda$preRebootVerification$1$StagingManager(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p1

    return-object p1
.end method
