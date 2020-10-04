.class public Lcom/android/server/soundtrigger/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final INVALID_VALUE:I = -0x80000000

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "SoundTriggerHelper"


# instance fields
.field private mCallActive:Z

.field private final mContext:Landroid/content/Context;

.field private mIsPowerSaveMode:Z

.field private mKeyphraseUuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mModelDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;",
            ">;"
        }
    .end annotation
.end field

.field private mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field final mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

.field private mRecognitionRunning:Z

.field private mServiceDisabled:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-static {v2}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    move-result v3

    .line 124
    .local v3, "status":I
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 125
    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 126
    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 127
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 128
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 129
    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;

    invoke-direct {v4, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    iput-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 132
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    .line 134
    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_1

    .line 135
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listModules status="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", # of modules="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SoundTriggerHelper"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 137
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 142
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 70
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .param p1, "x1"    # Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onCallStateChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 70
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .param p1, "x1"    # Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onPowerSaveModeChangedLocked(Z)V

    return-void
.end method

.method private cleanUpExistingKeyphraseModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I
    .locals 3
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v0

    .line 232
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to stop or unload previous model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    const-string v2, "SoundTriggerHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    return v0
.end method

.method private computeRecognitionRunningLocked()Z
    .locals 4

    .line 1220
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1225
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 1227
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    return v0

    .line 1229
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_1
    goto :goto_0

    .line 1230
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 1231
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    return v0

    .line 1221
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    .line 1222
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    return v0
.end method

.method private createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 2
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "keyphraseId"    # I

    .line 1087
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 1091
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    return-object v0
.end method

.method private dumpModelStateLocked()V
    .locals 5

    .line 1211
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 1212
    .local v1, "modelId":Ljava/util/UUID;
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1213
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SoundTriggerHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    .end local v1    # "modelId":Ljava/util/UUID;
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    goto :goto_0

    .line 1215
    :cond_0
    return-void
.end method

.method private forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 987
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 988
    return-void
.end method

.method private forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V
    .locals 4
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "exception"    # Ljava/lang/Exception;
    .param p3, "modelDataIterator"    # Ljava/util/Iterator;

    .line 1003
    const-string v0, "SoundTriggerHelper"

    if-eqz p2, :cond_0

    .line 1004
    const-string v1, "forceStopAndUnloadModel"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping previously started dangling model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 1010
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    goto :goto_0

    .line 1012
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to stop model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unloading previously loaded dangling model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    if-nez v1, :cond_6

    .line 1019
    if-eqz p3, :cond_3

    .line 1020
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1022
    :cond_3
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    :goto_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1025
    .local v0, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1026
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1027
    .local v1, "pair":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1028
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1030
    .end local v1    # "pair":Ljava/util/Map$Entry;
    :cond_4
    goto :goto_2

    .line 1031
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 1032
    .end local v0    # "it":Ljava/util/Iterator;
    goto :goto_3

    .line 1033
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unload model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_7
    :goto_3
    return-void
.end method

.method private getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I
    .locals 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 787
    const/high16 v0, -0x80000000

    const-string v1, "SoundTriggerHelper"

    if-nez p1, :cond_0

    .line 788
    const-string v2, "Null RecognitionEvent received."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return v0

    .line 791
    :cond_0
    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 793
    .local v2, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 798
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v2, v0

    iget v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    return v0

    .line 794
    :cond_2
    :goto_0
    const-string v3, "Invalid keyphrase recognition event!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return v0
.end method

.method private getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 2
    .param p1, "keyphraseId"    # I

    .line 1077
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 1078
    .local v0, "uuid":Ljava/util/UUID;
    if-nez v0, :cond_0

    .line 1079
    const/4 v1, 0x0

    return-object v1

    .line 1081
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    return-object v1
.end method

.method private getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 3
    .param p1, "modelHandle"    # I

    .line 1100
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1101
    .local v1, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1102
    return-object v1

    .line 1104
    .end local v1    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_0
    goto :goto_0

    .line 1105
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 3
    .param p1, "modelId"    # Ljava/util/UUID;

    .line 1056
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1057
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-nez v0, :cond_0

    .line 1058
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 1059
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1060
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1061
    const-string v1, "SoundTriggerHelper"

    const-string v2, "UUID already used for non-generic model."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/4 v1, 0x0

    return-object v1

    .line 1064
    :cond_1
    :goto_0
    return-object v0
.end method

.method private initializeTelephonyAndPowerStateListeners()V
    .locals 6

    .line 943
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 946
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 949
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 953
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    if-nez v2, :cond_1

    .line 954
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    .line 955
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 958
    :cond_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    iget-boolean v2, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 962
    nop

    .line 963
    return-void

    .line 961
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private internalClearGlobalStateLocked()V
    .locals 5

    .line 885
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 887
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 890
    nop

    .line 893
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    if-eqz v2, :cond_0

    .line 894
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 895
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    .line 897
    :cond_0
    return-void

    .line 889
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private internalClearModelStateLocked()V
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 902
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 903
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    goto :goto_0

    .line 904
    :cond_0
    return-void
.end method

.method private isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 650
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    return v0
.end method

.method private isRecognitionAllowed()Z
    .locals 1

    .line 1112
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onCallStateChangedLocked(Z)V
    .locals 1
    .param p1, "callActive"    # Z

    .line 730
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    if-ne v0, p1, :cond_0

    .line 733
    return-void

    .line 735
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 736
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 737
    return-void
.end method

.method private onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 654
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string/jumbo v2, "sth_generic_recognition_event"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 655
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->status:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->status:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 657
    return-void

    .line 659
    :cond_0
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 660
    .local v0, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    const-string v2, "SoundTriggerHelper"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 666
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v3

    .line 667
    .local v3, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-nez v3, :cond_2

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generic recognition event: Null callback for model handle: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void

    .line 673
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 676
    :try_start_0
    invoke-interface {v3, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    goto :goto_0

    .line 680
    :catch_0
    move-exception v4

    .line 681
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "RemoteException in onGenericSoundTriggerDetected"

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v4

    .line 685
    .local v4, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    if-nez v4, :cond_3

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generic recognition event: Null RecognitionConfig for model handle: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-void

    .line 691
    :cond_3
    iget-boolean v2, v4, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 693
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 694
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 697
    :cond_4
    return-void

    .line 677
    .end local v4    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catch_1
    move-exception v1

    .line 678
    .local v1, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 679
    return-void

    .line 661
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v3    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generic recognition event: Model does not exist for handle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void
.end method

.method private onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 802
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition success"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const-string/jumbo v3, "sth_keyphrase_recognition_event"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 804
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I

    move-result v1

    .line 805
    .local v1, "keyphraseId":I
    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v3

    .line 807
    .local v3, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 812
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v4

    if-nez v4, :cond_1

    .line 813
    const-string v2, "Received onRecognition event without callback for keyphrase model."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void

    .line 817
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 820
    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    goto :goto_0

    .line 824
    :catch_0
    move-exception v4

    .line 825
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "RemoteException in onKeyphraseDetected"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v0

    .line 829
    .local v0, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    if-eqz v0, :cond_2

    .line 831
    iget-boolean v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 834
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 835
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 841
    :cond_3
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAssistantData(Landroid/content/Context;I)V

    .line 843
    return-void

    .line 821
    .end local v0    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catch_1
    move-exception v0

    .line 822
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, v3, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 823
    return-void

    .line 808
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keyphase model data does not exist for ID:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void
.end method

.method private onPowerSaveModeChangedLocked(Z)V
    .locals 1
    .param p1, "isPowerSaveMode"    # Z

    .line 740
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-ne v0, p1, :cond_0

    .line 741
    return-void

    .line 743
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 744
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 745
    return-void
.end method

.method private onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 760
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition aborted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_recognition_aborted"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 762
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v1

    .line 763
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 766
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 769
    :catch_0
    move-exception v2

    .line 770
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in onRecognitionPaused"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 767
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 768
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, v1, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 773
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_0
    :goto_0
    return-void
.end method

.method private onRecognitionFailureLocked()V
    .locals 3

    .line 776
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition failure"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_recognition_failure_event"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 779
    const/high16 v0, -0x80000000

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAllLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 782
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 783
    nop

    .line 784
    return-void

    .line 781
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 782
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    throw v0
.end method

.method private onServiceDiedLocked()V
    .locals 4

    .line 870
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_service_died"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 871
    sget v1, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAllLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 874
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 875
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_0

    .line 876
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 877
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 880
    :cond_0
    return-void

    .line 873
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 874
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 875
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_1

    .line 876
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 877
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    :cond_1
    throw v1
.end method

.method private onServiceStateChangedLocked(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .line 752
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    if-ne p1, v0, :cond_0

    .line 753
    return-void

    .line 755
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    .line 756
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    .line 757
    return-void
.end method

.method private onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .line 749
    return-void
.end method

.method private removeKeyphraseModelLocked(I)V
    .locals 3
    .param p1, "keyphraseId"    # I

    .line 1068
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 1069
    .local v0, "uuid":Ljava/util/UUID;
    if-nez v0, :cond_0

    .line 1070
    return-void

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    return-void
.end method

.method private sendErrorCallbacksToAllLocked(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .line 967
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 968
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    .line 969
    .local v2, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz v2, :cond_0

    .line 971
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    goto :goto_1

    .line 972
    :catch_0
    move-exception v3

    .line 973
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException sendErrorCallbacksToAllLocked for model handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 973
    const-string v5, "SoundTriggerHelper"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v2    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 978
    :cond_1
    return-void
.end method

.method private startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .locals 9
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "notify"    # Z

    .line 1118
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 1119
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    .line 1120
    .local v1, "handle":I
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v2

    .line 1121
    .local v2, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    const/high16 v3, -0x80000000

    const-string/jumbo v4, "sth_start_recognition_error"

    const/4 v5, 0x1

    const-string v6, "SoundTriggerHelper"

    if-eqz v0, :cond_4

    if-eq v1, v3, :cond_4

    if-nez v2, :cond_0

    goto :goto_3

    .line 1128
    :cond_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1130
    const-string/jumbo v3, "startRecognition requested but not allowed."

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sth_start_recognition_not_allowed"

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1132
    const/4 v3, 0x0

    return v3

    .line 1135
    :cond_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v3, v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v3

    .line 1136
    .local v3, "status":I
    if-eqz v3, :cond_2

    .line 1137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRecognition failed with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1140
    if-eqz p2, :cond_3

    .line 1142
    :try_start_0
    invoke-interface {v0, v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_0
    goto :goto_2

    .line 1145
    :catch_0
    move-exception v4

    .line 1146
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "RemoteException in onError"

    invoke-static {v6, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1143
    :catch_1
    move-exception v4

    .line 1144
    .local v4, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .end local v4    # "e":Landroid/os/DeadObjectException;
    goto :goto_0

    .line 1150
    :cond_2
    const-string/jumbo v4, "startRecognition successful."

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "sth_start_recognition_success"

    invoke-static {v4, v7, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1152
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStarted()V

    .line 1154
    if-eqz p2, :cond_3

    .line 1156
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1161
    :goto_1
    goto :goto_2

    .line 1159
    :catch_2
    move-exception v4

    .line 1160
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "RemoteException in onRecognitionResumed"

    invoke-static {v6, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1157
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    .line 1158
    .local v4, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .end local v4    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 1167
    :cond_3
    :goto_2
    return v3

    .line 1123
    .end local v3    # "status":I
    :cond_4
    :goto_3
    const-string/jumbo v7, "startRecognition: Bad data passed in."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1125
    return v3
.end method

.method private stopAndUnloadDeadModelsLocked()V
    .locals 4

    .line 1039
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1040
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1041
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1042
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1043
    goto :goto_0

    .line 1045
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1046
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1047
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1049
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " that has no clients"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoundTriggerHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 1052
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_2
    goto :goto_0

    .line 1053
    :cond_3
    return-void
.end method

.method private stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 5
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 428
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    const/high16 v1, -0x80000000

    if-nez p2, :cond_0

    .line 430
    :try_start_0
    monitor-exit v0

    return v1

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_1

    goto :goto_1

    .line 437
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    .line 438
    .local v2, "currentCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz v2, :cond_6

    .line 439
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 445
    :cond_2
    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 448
    const-string v3, "SoundTriggerHelper"

    const-string v4, "Attempting stopRecognition for another recognition"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    monitor-exit v0

    return v1

    .line 453
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 454
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v3

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v1

    .line 456
    .local v1, "status":I
    if-eqz v1, :cond_4

    .line 457
    monitor-exit v0

    return v1

    .line 462
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    .line 463
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    .line 464
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 466
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->computeRecognitionRunningLocked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 467
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 470
    :cond_5
    monitor-exit v0

    return v1

    .line 441
    .end local v1    # "status":I
    :cond_6
    :goto_0
    const-string v3, "SoundTriggerHelper"

    const-string v4, "Attempting stopRecognition without a successful startRecognition"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    monitor-exit v0

    return v1

    .line 433
    .end local v2    # "currentCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_7
    :goto_1
    const-string v2, "SoundTriggerHelper"

    const-string v3, "Attempting stopRecognition without the capability"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    monitor-exit v0

    return v1

    .line 471
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .locals 6
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "notify"    # Z

    .line 1171
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 1174
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    const/4 v1, 0x0

    .line 1176
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v1

    .line 1178
    const/4 v2, 0x1

    const-string v3, "SoundTriggerHelper"

    if-eqz v1, :cond_0

    .line 1179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRecognition call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sth_stop_recognition_error"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1181
    if-eqz p2, :cond_1

    .line 1183
    :try_start_0
    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :goto_0
    goto :goto_2

    .line 1186
    :catch_0
    move-exception v2

    .line 1187
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException in onError"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1184
    :catch_1
    move-exception v2

    .line 1185
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_0

    .line 1191
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 1192
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sth_stop_recognition_success"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1194
    if-eqz p2, :cond_1

    .line 1196
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1201
    :goto_1
    goto :goto_2

    .line 1199
    :catch_2
    move-exception v2

    .line 1200
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteException in onRecognitionPaused"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1197
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    .line 1198
    .local v2, "e":Landroid/os/DeadObjectException;
    invoke-direct {p0, p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .end local v2    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 1207
    :cond_1
    :goto_2
    return v1
.end method

.method private tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .locals 5
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "stopModel"    # Z
    .param p3, "unloadModel"    # Z

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "status":I
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelNotLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    return v0

    .line 483
    :cond_0
    const-string v1, "SoundTriggerHelper"

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v0

    .line 486
    if-eqz v0, :cond_1

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopRecognition failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v0

    .line 492
    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 493
    const-string v2, "Unloading previously loaded stale model."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v0

    .line 495
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const-string/jumbo v4, "sth_unloading_stale_model"

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 496
    if-eqz v0, :cond_2

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unloadSoundModel call failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 503
    :cond_3
    :goto_0
    return v0
.end method

.method private updateAllRecognitionsLocked(Z)V
    .locals 4
    .param p1, "notify"    # Z

    .line 846
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v0

    .line 848
    .local v0, "isAllowed":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 849
    .local v1, "modelDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 850
    .local v3, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 851
    .end local v3    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    goto :goto_0

    .line 852
    :cond_0
    return-void
.end method

.method private updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .locals 3
    .param p1, "model"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "isAllowed"    # Z
    .param p3, "notify"    # Z

    .line 856
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 857
    .local v0, "start":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v2

    if-ne v0, v2, :cond_1

    .line 859
    return v1

    .line 861
    :cond_1
    if-eqz v0, :cond_2

    .line 862
    invoke-direct {p0, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    return v1

    .line 864
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    return v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 932
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_0
    const-string v1, "  module properties="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 936
    const-string v1, "  call active="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 937
    const-string v1, "  power save mode active="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 938
    const-string v1, "  service disabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 939
    monitor-exit v0

    .line 940
    return-void

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getGenericModelState(Ljava/util/UUID;)I
    .locals 6
    .param p1, "modelId"    # Ljava/util/UUID;

    .line 584
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_get_generic_model_state"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 586
    const/high16 v1, -0x80000000

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_0

    goto :goto_1

    .line 589
    :cond_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 590
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 595
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 596
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetGenericModelState: Given generic model is not loaded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    monitor-exit v0

    return v1

    .line 599
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 600
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetGenericModelState: Given generic model is not started:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    monitor-exit v0

    return v1

    .line 604
    :cond_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->getModelState(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 591
    :cond_4
    :goto_0
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetGenericModelState error: Invalid generic model id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    monitor-exit v0

    return v1

    .line 587
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_5
    :goto_1
    monitor-exit v0

    return v1

    .line 605
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getKeyphraseModelState(Ljava/util/UUID;)I
    .locals 2
    .param p1, "modelId"    # Ljava/util/UUID;

    .line 609
    const-string v0, "SoundTriggerHelper"

    const-string v1, "GetKeyphraseModelState error: Not implemented"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    return-object v0
.end method

.method isRecognitionRequested(Ljava/util/UUID;)Z
    .locals 3
    .param p1, "modelId"    # Ljava/util/UUID;

    .line 577
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 579
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 580
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 616
    if-nez p1, :cond_0

    .line 617
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Null recognition event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void

    .line 621
    :cond_0
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    if-nez v0, :cond_1

    .line 623
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Invalid recognition event type (not one of generic or keyphrase)!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    goto :goto_0

    .line 635
    :cond_2
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionFailureLocked()V

    .line 636
    goto :goto_0

    .line 631
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    .line 632
    goto :goto_0

    .line 639
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 640
    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    goto :goto_0

    .line 642
    :cond_5
    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 646
    :goto_0
    monitor-exit v0

    .line 647
    return-void

    .line 646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDied()V
    .locals 3

    .line 722
    const-string v0, "SoundTriggerHelper"

    const-string/jumbo v1, "onServiceDied!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_service_died"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 724
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceDiedLocked()V

    .line 726
    monitor-exit v0

    .line 727
    return-void

    .line 726
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .line 715
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceStateChangedLocked(Z)V

    .line 717
    monitor-exit v0

    .line 718
    return-void

    .line 717
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .line 701
    if-nez p1, :cond_0

    .line 702
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Invalid sound model event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_sound_model_updated"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 708
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V

    .line 709
    monitor-exit v0

    .line 710
    return-void

    .line 709
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 9
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 157
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_start_recognition"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 158
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    .line 166
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-nez v2, :cond_1

    .line 167
    const-string v3, "SoundTriggerHelper"

    const-string v4, "Irrecoverable error occurred, check UUID / sound model data."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    monitor-exit v1

    return v0

    .line 170
    :cond_1
    const/high16 v8, -0x80000000

    move-object v3, p0

    move-object v4, p2

    move-object v5, v2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 172
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    :cond_2
    :goto_0
    const-string v1, "SoundTriggerHelper"

    const-string v2, "Passed in bad data to startGenericRecognition()."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v0
.end method

.method startKeyphraseRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 8
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 186
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_start_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 188
    const/high16 v1, -0x80000000

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-nez p4, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    .line 201
    .local v2, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    const-string v3, "SoundTriggerHelper"

    const-string v4, "Generic model with same UUID exists."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v0

    return v1

    .line 207
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v1

    iget-object v3, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 209
    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->cleanUpExistingKeyphraseModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I

    move-result v1

    .line 210
    .local v1, "status":I
    if-eqz v1, :cond_2

    .line 211
    monitor-exit v0

    return v1

    .line 213
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V

    .line 214
    const/4 v2, 0x0

    .line 219
    .end local v1    # "status":I
    :cond_3
    if-nez v2, :cond_4

    .line 220
    iget-object v1, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-direct {p0, v1, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 219
    :cond_4
    move-object v1, v2

    .line 223
    .end local v2    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .local v1, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :goto_0
    move-object v2, p0

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    move-object v6, p4

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 189
    .end local v1    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_5
    :goto_1
    monitor-exit v0

    return v1

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I
    .locals 9
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .param p2, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .param p5, "keyphraseId"    # I

    .line 255
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    const/high16 v2, -0x80000000

    if-nez v1, :cond_0

    .line 257
    const-string v1, "SoundTriggerHelper"

    const-string v3, "Attempting startRecognition without the capability"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    monitor-exit v0

    return v2

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget v1, v1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    const/4 v3, 0x0

    invoke-static {v1, p0, v3}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 262
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v1, :cond_1

    .line 263
    const-string v1, "SoundTriggerHelper"

    const-string/jumbo v3, "startRecognition cannot attach to sound trigger module"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    monitor-exit v0

    return v2

    .line 269
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    if-nez v1, :cond_2

    .line 270
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->initializeTelephonyAndPowerStateListeners()V

    .line 280
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "stopModel":Z
    const/4 v3, 0x0

    .line 283
    .local v3, "unloadModel":Z
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    const/4 v1, 0x1

    .line 287
    const/4 v3, 0x0

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 291
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v4

    move v1, v4

    .line 292
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v4

    move v3, v4

    .line 294
    :cond_4
    :goto_0
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    .line 295
    :cond_5
    invoke-direct {p0, p2, v1, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v4

    .line 296
    .local v4, "status":I
    if-eqz v4, :cond_6

    .line 297
    const-string v2, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to stop or unload previous model: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 297
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit v0

    return v4

    .line 304
    .end local v1    # "stopModel":Z
    .end local v3    # "unloadModel":Z
    .end local v4    # "status":I
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    .line 305
    .local v1, "oldCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 306
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling previous recognition for model id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :try_start_1
    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    goto :goto_1

    .line 310
    :catch_0
    move-exception v3

    .line 311
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "SoundTriggerHelper"

    const-string v5, "RemoteException in onDetectionStopped"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    .line 317
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_a

    .line 322
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopAndUnloadDeadModelsLocked()V

    .line 323
    new-array v3, v4, [I

    aput v2, v3, v5

    .line 324
    .local v3, "handle":[I
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v6, p1, v3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result v6

    .line 325
    .local v6, "status":I
    if-eqz v6, :cond_8

    .line 326
    const-string v2, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadSoundModel call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    monitor-exit v0

    return v6

    .line 329
    :cond_8
    aget v7, v3, v5

    if-ne v7, v2, :cond_9

    .line 330
    const-string v4, "SoundTriggerHelper"

    const-string/jumbo v5, "loadSoundModel call returned invalid sound model handle"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    monitor-exit v0

    return v2

    .line 333
    :cond_9
    aget v2, v3, v5

    invoke-virtual {p2, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setHandle(I)V

    .line 334
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    .line 335
    const-string v2, "SoundTriggerHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sound model loaded with handle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v3    # "handle":[I
    .end local v6    # "status":I
    :cond_a
    invoke-virtual {p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V

    .line 338
    invoke-virtual {p2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 339
    invoke-virtual {p2, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 340
    invoke-virtual {p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V

    .line 342
    invoke-direct {p0, p2, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v2

    monitor-exit v0

    return v2

    .line 344
    .end local v1    # "oldCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 6
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 358
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_stop_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 360
    const/high16 v1, -0x80000000

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 367
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v1

    .line 373
    .local v1, "status":I
    if-eqz v1, :cond_2

    .line 374
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopGenericRecognition failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    monitor-exit v0

    return v1

    .line 368
    .end local v1    # "status":I
    :cond_3
    :goto_0
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting stopRecognition on invalid model with id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    monitor-exit v0

    return v1

    .line 361
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_4
    :goto_1
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null callbackreceived for stopGenericRecognition() for modelid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    monitor-exit v0

    return v1

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 6
    .param p1, "keyphraseId"    # I
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 391
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_stop_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 393
    const/high16 v1, -0x80000000

    if-nez p2, :cond_0

    .line 394
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null callback received for stopKeyphraseRecognition() for keyphraseId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    monitor-exit v0

    return v1

    .line 399
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    .line 400
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v1

    .line 412
    .local v1, "status":I
    if-eqz v1, :cond_2

    .line 413
    monitor-exit v0

    return v1

    .line 416
    :cond_2
    monitor-exit v0

    return v1

    .line 401
    .end local v1    # "status":I
    :cond_3
    :goto_0
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No model exists for given keyphrase Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    monitor-exit v0

    return v1

    .line 417
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unloadGenericSoundModel(Ljava/util/UUID;)I
    .locals 6
    .param p1, "modelId"    # Ljava/util/UUID;

    .line 539
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unload_generic_sound_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 541
    const/high16 v1, -0x80000000

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 544
    :cond_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 545
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 550
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 552
    const-string v1, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unload: Given generic model is not loaded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    monitor-exit v0

    return v3

    .line 555
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 556
    invoke-direct {p0, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    .line 558
    .local v1, "status":I
    if-eqz v1, :cond_3

    .line 559
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopGenericRecognition failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .end local v1    # "status":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    .line 564
    .restart local v1    # "status":I
    if-eqz v1, :cond_4

    .line 565
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadGenericSoundModel() call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v3, "SoundTriggerHelper"

    const-string/jumbo v4, "unloadGenericSoundModel() force-marking model as unloaded."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_4
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    monitor-exit v0

    return v1

    .line 546
    .end local v1    # "status":I
    :cond_5
    :goto_0
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unload error: Attempting unload invalid generic model with id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    monitor-exit v0

    return v1

    .line 542
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_6
    :goto_1
    monitor-exit v0

    return v1

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unloadKeyphraseSoundModel(I)I
    .locals 6
    .param p1, "keyphraseId"    # I

    .line 511
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unload_keyphrase_sound_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 513
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v1

    .line 514
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 515
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 521
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    move-result v3

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v2

    .line 523
    .local v2, "status":I
    if-eqz v2, :cond_1

    .line 524
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop recognition failed for keyphrase ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v3

    move v2, v3

    .line 528
    if-eqz v2, :cond_2

    .line 529
    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadKeyphraseSoundModel call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V

    .line 534
    monitor-exit v0

    return v2

    .line 516
    .end local v2    # "status":I
    :cond_3
    :goto_0
    monitor-exit v0

    return v3

    .line 535
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
