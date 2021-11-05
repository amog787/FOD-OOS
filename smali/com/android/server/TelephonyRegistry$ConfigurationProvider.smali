.class public Lcom/android/server/TelephonyRegistry$ConfigurationProvider;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getRegistrationLimit$0()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    const-string/jumbo v0, "telephony"

    const-string/jumbo v1, "phone_state_listener_per_pid_registration_limit"

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isRegistrationLimitEnabledInPlatformCompat$1(I)Ljava/lang/Boolean;
    .locals 2
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    const-wide/32 v0, 0x8fe4129

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRegistrationLimit()I
    .locals 1

    .line 211
    sget-object v0, Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$A5xhR3lZDw53BlzyFNt_k-u3iFQ;->INSTANCE:Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$A5xhR3lZDw53BlzyFNt_k-u3iFQ;

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isRegistrationLimitEnabledInPlatformCompat(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 224
    new-instance v0, Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$BAHbE7Yttp6aPP9zqDcJXshJtks;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$TelephonyRegistry$ConfigurationProvider$BAHbE7Yttp6aPP9zqDcJXshJtks;-><init>(I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
