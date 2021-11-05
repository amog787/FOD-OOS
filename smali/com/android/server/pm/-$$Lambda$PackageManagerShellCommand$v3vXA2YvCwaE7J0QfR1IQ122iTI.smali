.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI;->f$0:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$v3vXA2YvCwaE7J0QfR1IQ122iTI;->f$0:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->lambda$runSetHomeActivity$1(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V

    return-void
.end method
