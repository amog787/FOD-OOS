.class public Lcom/android/server/devicepolicy/CryptoTestHelper;
.super Ljava/lang/Object;
.source "CryptoTestHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runAndLogSelfTest()V
    .locals 4

    .line 26
    invoke-static {}, Lcom/android/server/devicepolicy/CryptoTestHelper;->runSelfTest()I

    move-result v0

    .line 27
    .local v0, "result":I
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x3346f

    invoke-static {v2, v1}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 28
    return-void
.end method

.method private static native runSelfTest()I
.end method
