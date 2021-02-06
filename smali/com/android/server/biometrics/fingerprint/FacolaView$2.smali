.class Lcom/android/server/biometrics/fingerprint/FacolaView$2;
.super Landroid/os/FileObserver;
.source "FacolaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/FacolaView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

.field final synthetic val$xiaomiFodReadyPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FacolaView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .line 171
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    iput-object p4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->val$xiaomiFodReadyPath:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onEvent$0$FacolaView$2(Ljava/lang/String;)V
    .locals 3
    .param p1, "currentUiReady"    # Ljava/lang/String;

    .line 179
    :try_start_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$500(Lcom/android/server/biometrics/fingerprint/FacolaView;)Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;->extCmd(II)I

    goto :goto_0

    .line 181
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$500(Lcom/android/server/biometrics/fingerprint/FacolaView;)Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;->extCmd(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    :goto_0
    goto :goto_1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "amog787-Enroll"

    const-string v2, "Failed Xiaomi async extcmd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->val$xiaomiFodReadyPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "currentUiReady":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New fod ready is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "amog787-Enroll"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$2;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$400(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$eCtxB4gTvSSxRkeuPZvUbWzse7w;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$2$eCtxB4gTvSSxRkeuPZvUbWzse7w;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method
