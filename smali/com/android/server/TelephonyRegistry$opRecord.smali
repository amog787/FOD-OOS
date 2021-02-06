.class Lcom/android/server/TelephonyRegistry$opRecord;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "opRecord"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field callback:Lcom/android/internal/telephony/AOpPhoneStateListener;

.field callerPid:I

.field callerUid:I

.field callingFeatureId:Ljava/lang/String;

.field callingPackage:Ljava/lang/String;

.field context:Landroid/content/Context;

.field deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

.field events:I

.field onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field phoneId:I

.field subId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry$opRecord;->subId:I

    .line 244
    iput v0, p0, Lcom/android/server/TelephonyRegistry$opRecord;->phoneId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TelephonyRegistry$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/TelephonyRegistry$1;

    .line 223
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry$opRecord;-><init>()V

    return-void
.end method


# virtual methods
.method canReadCallLog()Z
    .locals 6

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$opRecord;->context:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/TelephonyRegistry$opRecord;->subId:I

    iget v2, p0, Lcom/android/server/TelephonyRegistry$opRecord;->callerPid:I

    iget v3, p0, Lcom/android/server/TelephonyRegistry$opRecord;->callerUid:I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$opRecord;->callingPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$opRecord;->callingFeatureId:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadCallLog(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method matchOnOpportunisticSubscriptionsChangedListener()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$opRecord;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method matchOnSubscriptionsChangedListener()Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$opRecord;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method matchPhoneStateListenerEvent(I)Z
    .locals 1
    .param p1, "events"    # I

    .line 247
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$opRecord;->callback:Lcom/android/internal/telephony/AOpPhoneStateListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/TelephonyRegistry$opRecord;->events:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$opRecord;->callingPackage:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/TelephonyRegistry$opRecord;->callerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$opRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$opRecord;->callback:Lcom/android/internal/telephony/AOpPhoneStateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onSubscriptionsChangedListenererCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$opRecord;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onOpportunisticSubscriptionsChangedListenererCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$opRecord;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/TelephonyRegistry$opRecord;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/TelephonyRegistry$opRecord;->phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/TelephonyRegistry$opRecord;->events:I

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    return-object v0
.end method
