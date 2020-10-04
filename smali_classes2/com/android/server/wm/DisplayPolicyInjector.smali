.class public Lcom/android/server/wm/DisplayPolicyInjector;
.super Ljava/lang/Object;
.source "DisplayPolicyInjector.java"


# static fields
.field private static final DISABLE_IMMERSIVE_MODE_CONFIRM_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    const-string v0, "com.android.engineeringmode"

    const-string v1, "com.oem.autotest"

    const-string v2, "com.oneplus.factorymode"

    const-string v3, "com.synaptics.forcebuttontest"

    const-string v4, "com.oneplus.aod"

    const-string v5, "com.fingerprints.fingerprintsensortest"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/DisplayPolicyInjector;->DISABLE_IMMERSIVE_MODE_CONFIRM_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldDisableImmersiveModeConfirm(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x43

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/wm/DisplayPolicyInjector;->DISABLE_IMMERSIVE_MODE_CONFIRM_LIST:Ljava/util/List;

    .line 38
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 37
    :goto_1
    return v0
.end method
