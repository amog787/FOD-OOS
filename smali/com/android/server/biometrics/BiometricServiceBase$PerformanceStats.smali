.class public Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PerformanceStats"
.end annotation


# instance fields
.field public accept:I

.field public acquire:I

.field public lockout:I

.field public permanentLockout:I

.field public reject:I

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method protected constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 127
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
