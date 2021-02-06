.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$UpdateInstaller$CxDofI1o0YOUvaV_mdNG4ke1uck;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/UpdateInstaller;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/UpdateInstaller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$UpdateInstaller$CxDofI1o0YOUvaV_mdNG4ke1uck;->f$0:Lcom/android/server/devicepolicy/UpdateInstaller;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$UpdateInstaller$CxDofI1o0YOUvaV_mdNG4ke1uck;->f$0:Lcom/android/server/devicepolicy/UpdateInstaller;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/UpdateInstaller;->lambda$startInstallUpdate$0$UpdateInstaller()V

    return-void
.end method
