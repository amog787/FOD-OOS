.class Lcom/android/server/biometrics/fingerprint/FacolaView$3;
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

.field final synthetic val$actualMaskBrightnessPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FacolaView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .line 266
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    iput-object p4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->val$actualMaskBrightnessPath:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onEvent$0(ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "retval"    # I
    .param p1, "out"    # Ljava/util/ArrayList;

    .line 280
    return-void
.end method

.method static synthetic lambda$onEvent$1(ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "retval"    # I
    .param p1, "out"    # Ljava/util/ArrayList;

    .line 283
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 9
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->val$actualMaskBrightnessPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "actualMask":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New actual mask brightness is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PHH-Enroll"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "eventReq":I
    :try_start_0
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    const/4 v1, 0x1

    goto :goto_0

    .line 276
    :cond_0
    const/4 v1, 0x2

    .line 278
    :goto_0
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$1000(Lcom/android/server/biometrics/fingerprint/FacolaView;)Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$1000(Lcom/android/server/biometrics/fingerprint/FacolaView;)Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v3

    const/16 v4, 0x16

    const/4 v5, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$3$uM5c_HWeBgd-FmJ1-WApkKMR3WI;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$3$uM5c_HWeBgd-FmJ1-WApkKMR3WI;

    move v6, v1

    invoke-interface/range {v3 .. v8}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    goto :goto_1

    .line 281
    :cond_1
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$1100(Lcom/android/server/biometrics/fingerprint/FacolaView;)Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 282
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView$3;->this$0:Lcom/android/server/biometrics/fingerprint/FacolaView;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FacolaView;->access$1100(Lcom/android/server/biometrics/fingerprint/FacolaView;)Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    move-result-object v3

    const/16 v4, 0x16

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$3$GBoaMSU7QnMxq8MxUYoLB49PZy4;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$3$GBoaMSU7QnMxq8MxUYoLB49PZy4;

    invoke-interface {v3, v4, v1, v5, v6}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1    # "eventReq":I
    :cond_2
    :goto_1
    goto :goto_2

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed setting samsung event for mask observer"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
