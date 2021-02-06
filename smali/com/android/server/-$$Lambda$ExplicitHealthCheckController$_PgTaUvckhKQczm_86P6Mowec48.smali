.class public final synthetic Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$_PgTaUvckhKQczm_86P6Mowec48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$_PgTaUvckhKQczm_86P6Mowec48;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ExplicitHealthCheckController$_PgTaUvckhKQczm_86P6Mowec48;->f$0:Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Lcom/android/server/ExplicitHealthCheckController;->lambda$getSupportedPackages$4(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
