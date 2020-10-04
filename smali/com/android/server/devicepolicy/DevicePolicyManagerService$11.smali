.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabled(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 7277
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 7281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$11;->val$userHandle:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->refreshScreenCaptureDisabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7284
    goto :goto_0

    .line 7282
    :catch_0
    move-exception v0

    .line 7283
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DevicePolicyManager"

    const-string v2, "Unable to notify WindowManager."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7285
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
