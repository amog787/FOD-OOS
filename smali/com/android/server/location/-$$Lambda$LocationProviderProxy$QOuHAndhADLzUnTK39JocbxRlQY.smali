.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationProviderProxy$QOuHAndhADLzUnTK39JocbxRlQY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$QOuHAndhADLzUnTK39JocbxRlQY;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$QOuHAndhADLzUnTK39JocbxRlQY;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$QOuHAndhADLzUnTK39JocbxRlQY;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$QOuHAndhADLzUnTK39JocbxRlQY;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1, p1}, Lcom/android/server/location/LocationProviderProxy;->lambda$sendExtraCommand$3(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)V

    return-void
.end method
