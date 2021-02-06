.class public Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.super Lcom/android/server/SystemService;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;,
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VoiceInteractionManager"


# instance fields
.field final mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field final mContext:Landroid/content/Context;

.field final mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

.field final mLoadedKeyphraseIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mResolver:Landroid/content/ContentResolver;

.field private final mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

.field final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/app/IVoiceInteractionSessionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArraySet;

    .line 118
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    .line 123
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 125
    new-instance v0, Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    .line 126
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 127
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 128
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 127
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 129
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 130
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 129
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 131
    const-class v0, Landroid/os/UserManagerInternal;

    .line 132
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 131
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 134
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 136
    .local v0, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setVoiceInteractionPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 104
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->isSupported(Landroid/content/pm/UserInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .line 104
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->dumpSupportedUsers(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method private isSupported(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 168
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z
    .locals 1
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 173
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->isSupported(Landroid/content/pm/UserInfo;)Z

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 158
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_0

    .line 159
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 160
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 159
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 161
    const-class v0, Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerInternal;

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    goto :goto_0

    .line 162
    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->systemRunning(Z)V

    .line 165
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const-string v1, "voiceinteraction"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 153
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public onSwitchUser(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)V
    .locals 2
    .param p1, "from"    # Landroid/content/pm/UserInfo;
    .param p2, "to"    # Landroid/content/pm/UserInfo;

    .line 195
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchUser(I)V

    .line 196
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 180
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 181
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 187
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 188
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeeded(Z)V

    .line 189
    return-void
.end method
