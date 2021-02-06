.class Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;
.super Landroid/os/UpdateEngineCallback;
.source "AbUpdateInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/AbUpdateInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelegatingUpdateEngineCallback"
.end annotation


# instance fields
.field private mUpdateEngine:Landroid/os/UpdateEngine;

.field private mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/UpdateInstaller;Landroid/os/UpdateEngine;)V
    .locals 0
    .param p1, "updateInstaller"    # Lcom/android/server/devicepolicy/UpdateInstaller;
    .param p2, "updateEngine"    # Landroid/os/UpdateEngine;

    .line 264
    invoke-direct {p0}, Landroid/os/UpdateEngineCallback;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;

    .line 266
    iput-object p2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateEngine:Landroid/os/UpdateEngine;

    .line 267
    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .line 276
    iget-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateEngine:Landroid/os/UpdateEngine;

    invoke-virtual {v0}, Landroid/os/UpdateEngine;->unbind()Z

    .line 277
    if-nez p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnSuccess()V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;

    .line 281
    invoke-static {}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->access$000()Ljava/util/Map;

    move-result-object v1

    .line 282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 281
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 283
    invoke-static {}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->access$100()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown error with error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 280
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 285
    :goto_0
    return-void
.end method

.method public onStatusUpdate(IF)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "percentage"    # F

    .line 271
    return-void
.end method
