.class final Lcom/android/server/media/MediaSessionService$FullUserRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FullUserRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;,
        Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;
    }
.end annotation


# instance fields
.field private final mFullUserId:I

.field private mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

.field private final mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

.field private mOnMediaKeyListenerUid:I

.field private mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

.field private mOnVolumeKeyLongPressListenerUid:I

.field private final mPriorityStack:Lcom/android/server/media/MediaSessionStack;

.field private final mUidToSessionCount:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;
    .param p2, "fullUserId"    # I

    .line 851
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 839
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 841
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mUidToSessionCount:Landroid/util/SparseIntArray;

    .line 852
    iput p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 853
    new-instance v0, Lcom/android/server/media/MediaSessionStack;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$700(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/media/MediaSessionStack;-><init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 855
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$800(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    const-string/jumbo v2, "media_button_receiver"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "mediaButtonReceiverInfo":Ljava/lang/String;
    nop

    .line 859
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v1

    .line 858
    invoke-static {v1, v0}, Lcom/android/server/media/MediaButtonReceiverHolder;->unflattenFromString(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 860
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Landroid/media/session/IOnMediaKeyListener;

    .line 834
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # I

    .line 834
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # I

    .line 834
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaButtonReceiverHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mUidToSessionCount:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 834
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 834
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object p1
.end method

.method private getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    .line 1010
    :goto_0
    return-object v0
.end method

.method private pushAddressedPlayerChangedLocked()V
    .locals 3

    .line 1004
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

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

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    .line 1005
    .local v1, "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V

    .line 1006
    .end local v1    # "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;
    goto :goto_0

    .line 1007
    :cond_0
    return-void
.end method

.method private pushAddressedPlayerChangedLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    .line 984
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    .line 985
    .local v0, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    if-eqz v0, :cond_0

    .line 986
    instance-of v1, v0, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_1

    .line 987
    move-object v1, v0

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 988
    .local v1, "session1":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 989
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 988
    invoke-interface {p1, v2, v3}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    .line 990
    .end local v1    # "session1":Lcom/android/server/media/MediaSessionRecord;
    goto :goto_0

    .line 993
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    if-eqz v1, :cond_1

    .line 994
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-virtual {v1}, Lcom/android/server/media/MediaButtonReceiverHolder;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    .end local v0    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionService"

    const-string v2, "Failed to pushAddressedPlayerChangedLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method


# virtual methods
.method public addOnMediaKeyEventDispatchedListenerLocked(Landroid/media/session/IOnMediaKeyEventDispatchedListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    .param p2, "uid"    # I

    .line 871
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 872
    .local v0, "cbBinder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyEventDispatchedListener;I)V

    .line 874
    .local v1, "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    goto :goto_0

    .line 877
    :catch_0
    move-exception v2

    .line 878
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaSessionService"

    const-string v4, "Failed to add listener"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public addOnMediaKeyEventSessionChangedListenerLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    .param p2, "uid"    # I

    .line 893
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 894
    .local v0, "cbBinder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyEventSessionChangedListener;I)V

    .line 896
    .local v1, "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    goto :goto_0

    .line 899
    :catch_0
    move-exception v2

    .line 900
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaSessionService"

    const-string v4, "Failed to add listener"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 901
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public destroySessionsForUserLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 863
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object v0

    .line 864
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    .line 865
    .local v2, "session":Lcom/android/server/media/MediaSessionRecord;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, v2}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 866
    .end local v2    # "session":Lcom/android/server/media/MediaSessionRecord;
    goto :goto_0

    .line 867
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Record for full_user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 917
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 918
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 919
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    if-ne v2, v3, :cond_0

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", profile_user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 917
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, "indent":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Volume key long-press listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Volume key long-press listener package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    .line 927
    invoke-static {v3, v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 926
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Media key listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Media key listener package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    .line 930
    invoke-static {v3, v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 929
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "OnMediaKeyEventDispatchedListener: added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 932
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " listener(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 931
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "  from "

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 935
    .local v4, "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v7, v4, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->uid:I

    invoke-static {v5, v7}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    .end local v4    # "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;
    goto :goto_1

    .line 937
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "OnMediaKeyEventSessionChangedListener: added "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 938
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 937
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    .line 941
    .local v3, "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v7, v3, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->uid:I

    invoke-static {v6, v7}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    .end local v3    # "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;
    goto :goto_2

    .line 943
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Last MediaButtonReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 944
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecordImpl;Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 2
    .param p1, "oldMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecordImpl;
    .param p2, "newMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media button session is changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 954
    if-eqz p1, :cond_0

    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    goto :goto_0

    .line 962
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 957
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 958
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 959
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 961
    :cond_1
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    .line 962
    monitor-exit v0

    .line 963
    return-void

    .line 962
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 5
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 967
    instance-of v0, p1, Lcom/android/server/media/MediaSession2Record;

    if-eqz v0, :cond_0

    .line 969
    return-void

    .line 971
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 972
    .local v0, "sessionRecord":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getMediaButtonReceiver()Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 973
    if-nez v1, :cond_1

    .line 974
    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/media/MediaButtonReceiverHolder;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "mediaButtonReceiverInfo":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$800(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    const-string/jumbo v4, "media_button_receiver"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 979
    return-void
.end method

.method public removeOnMediaKeyEventDispatchedListenerLocked(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    .line 885
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 886
    .local v0, "cbBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 887
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 888
    .local v1, "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 889
    return-void
.end method

.method public removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    .line 907
    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 908
    .local v0, "cbBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 909
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    .line 910
    .local v1, "cr":Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 911
    return-void
.end method
