.class Lcom/android/server/broadcastradio/hal2/RadioModule;
.super Ljava/lang/Object;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.module"


# instance fields
.field private final mAidlTunerSessions:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/broadcastradio/hal2/TunerSession;",
            ">;"
        }
    .end annotation
.end field

.field private mAntennaConnected:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

.field private mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

.field private final mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;


# direct methods
.method private constructor <init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    .locals 1
    .param p1, "service"    # Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .param p2, "properties"    # Landroid/hardware/radio/RadioManager$ModuleProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 66
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 70
    new-instance v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 114
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 115
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 51
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;
    .param p1, "x1"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 51
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;
    .param p1, "x1"    # Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 51
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    return-object p1
.end method

.method private fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .locals 5
    .param p1, "runnable"    # Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    .line 216
    const-string v0, "BcRadio2Srv.module"

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 218
    .local v2, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :try_start_0
    iget-object v3, v2, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p1, v3}, Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;->run(Landroid/hardware/radio/ITunerCallback;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 224
    :catch_0
    move-exception v3

    .line 225
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v4, "Failed to invoke ITunerCallback: "

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 219
    .end local v3    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 222
    .local v3, "ex":Landroid/os/DeadObjectException;
    const-string v4, "Removing dead TunerSession"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 226
    .end local v3    # "ex":Landroid/os/DeadObjectException;
    :goto_1
    nop

    .line 227
    .end local v2    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :goto_2
    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method static synthetic lambda$addAnnouncementListener$3(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V
    .locals 0
    .param p0, "halResult"    # Landroid/util/MutableInt;
    .param p1, "hwCloseHandle"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p2, "result"    # I
    .param p3, "closeHnd"    # Landroid/hardware/broadcastradio/V2_0/ICloseHandle;

    .line 249
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 250
    iput-object p3, p1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 251
    return-void
.end method

.method static synthetic lambda$openSession$2(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .locals 1
    .param p0, "hwSession"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "result"    # I
    .param p2, "session"    # Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 153
    const-string/jumbo v0, "openSession"

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 154
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 155
    return-void
.end method

.method static synthetic lambda$tryLoadingModule$0(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)V
    .locals 0
    .param p0, "amfmConfig"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "result"    # I
    .param p2, "config"    # Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    .line 125
    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 126
    :cond_0
    return-void
.end method

.method static synthetic lambda$tryLoadingModule$1(Lcom/android/server/broadcastradio/hal2/Mutable;ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "dabConfig"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "result"    # I
    .param p2, "config"    # Ljava/util/ArrayList;

    .line 130
    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 131
    :cond_0
    return-void
.end method

.method public static tryLoadingModule(ILjava/lang/String;)Lcom/android/server/broadcastradio/hal2/RadioModule;
    .locals 7
    .param p0, "idx"    # I
    .param p1, "fqName"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getService(Ljava/lang/String;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v1

    .line 121
    .local v1, "service":Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    if-nez v1, :cond_0

    return-object v0

    .line 123
    :cond_0
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 124
    .local v2, "amfmConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;>;"
    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$Ps8Vj3Q777LToAxaWE_cyahZ1Is;

    invoke-direct {v4, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$Ps8Vj3Q777LToAxaWE_cyahZ1Is;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getAmFmRegionConfig(ZLandroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;)V

    .line 128
    new-instance v3, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v3}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 129
    .local v3, "dabConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Ljava/util/List<Landroid/hardware/broadcastradio/V2_0/DabTableEntry;>;>;"
    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA;

    invoke-direct {v4, v3}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getDabRegionConfig(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;)V

    .line 133
    nop

    .line 134
    invoke-interface {v1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getProperties()Landroid/hardware/broadcastradio/V2_0/Properties;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    iget-object v6, v3, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 133
    invoke-static {p0, p1, v4, v5, v6}, Lcom/android/server/broadcastradio/hal2/Convert;->propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object v4

    .line 136
    .local v4, "prop":Landroid/hardware/radio/RadioManager$ModuleProperties;
    new-instance v5, Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-direct {v5, v1, v4}, Lcom/android/server/broadcastradio/hal2/RadioModule;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 137
    .end local v1    # "service":Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .end local v2    # "amfmConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;>;"
    .end local v3    # "dabConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Ljava/util/List<Landroid/hardware/broadcastradio/V2_0/DabTableEntry;>;>;"
    .end local v4    # "prop":Landroid/hardware/radio/RadioManager$ModuleProperties;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to load module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BcRadio2Srv.module"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    return-object v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .locals 7
    .param p1, "enabledTypes"    # [I
    .param p2, "listener"    # Landroid/hardware/radio/IAnnouncementListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, "enabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 234
    .local v3, "type":I
    int-to-byte v4, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v3    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_0
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 238
    .local v1, "halResult":Landroid/util/MutableInt;
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 239
    .local v2, "hwCloseHandle":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/ICloseHandle;>;"
    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$2;

    invoke-direct {v3, p0, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule$2;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/IAnnouncementListener;)V

    .line 247
    .local v3, "hwListener":Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    monitor-enter v4

    .line 248
    :try_start_0
    iget-object v5, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    new-instance v6, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$yXMJGeC9UEM7jTA1nM5DH22CG8U;

    invoke-direct {v6, v1, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$yXMJGeC9UEM7jTA1nM5DH22CG8U;-><init>(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v5, v0, v3, v6}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->registerAnnouncementListener(Ljava/util/ArrayList;Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;)V

    .line 252
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    iget v4, v1, Landroid/util/MutableInt;->value:I

    const-string v5, "addAnnouncementListener"

    invoke-static {v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 255
    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$3;

    invoke-direct {v4, p0, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$3;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    return-object v4

    .line 252
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public closeSessions(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Integer;

    .line 179
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 181
    .local v1, "tunerSessions":[Lcom/android/server/broadcastradio/hal2/TunerSession;
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    .line 185
    .local v3, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    invoke-virtual {v3, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->close(Ljava/lang/Integer;)V

    .line 184
    .end local v3    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void

    .line 183
    .end local v1    # "tunerSessions":[Lcom/android/server/broadcastradio/hal2/TunerSession;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .locals 2
    .param p1, "runnable"    # Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    .line 210
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 212
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getImage(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "id"    # I

    .line 267
    if-eqz p1, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    monitor-enter v0

    .line 271
    :try_start_0
    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$WfmM4W7QS3OnfFwUksITHnpM74g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$WfmM4W7QS3OnfFwUksITHnpM74g;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;I)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 272
    .local v1, "rawList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 273
    .local v2, "rawImage":[B
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 274
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v2, v4

    .line 273
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "rawList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v4    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    array-length v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_1
    array-length v0, v2

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 276
    .end local v2    # "rawImage":[B
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 267
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image ID is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getService()Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    return-object v0
.end method

.method public synthetic lambda$getImage$4$RadioModule(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    invoke-interface {v0, p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getImage(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method onTunerSessionClosed(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .locals 4
    .param p1, "tunerSession"    # Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 190
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "BcRadio2Srv.module"

    const-string v2, "closing HAL tuner session"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :try_start_1
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BcRadio2Srv.module"

    const-string/jumbo v3, "mHalTunerSession.close() failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 201
    :cond_0
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;
    .locals 5
    .param p1, "userCb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 152
    .local v1, "hwSession":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/ITunerSession;>;"
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$PbMDkfYDR1vn12EtbZSZscvNDM8;

    invoke-direct {v4, v1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$PbMDkfYDR1vn12EtbZSZscvNDM8;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v2, v3, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->openSession(Landroid/hardware/broadcastradio/V2_0/ITunerCallback;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;)V

    .line 156
    iget-object v2, v1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iput-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 158
    .end local v1    # "hwSession":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/ITunerSession;>;"
    :cond_0
    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession;

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession;Landroid/hardware/radio/ITunerCallback;)V

    .line 159
    .local v1, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v2}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-interface {p1, v2}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 170
    :cond_2
    monitor-exit v0

    return-object v1

    .line 171
    .end local v1    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
