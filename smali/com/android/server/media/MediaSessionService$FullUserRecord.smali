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


# static fields
.field private static final COMPONENT_NAME_USER_ID_DELIM:Ljava/lang/String; = ","

.field public static final COMPONENT_TYPE_ACTIVITY:I = 0x2

.field public static final COMPONENT_TYPE_BROADCAST:I = 0x1

.field public static final COMPONENT_TYPE_INVALID:I = 0x0

.field public static final COMPONENT_TYPE_SERVICE:I = 0x3


# instance fields
.field private mCallback:Landroid/media/session/ICallback;

.field private final mFullUserId:I

.field private mInitialDownMusicOnly:Z

.field private mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

.field private mInitialDownVolumeStream:I

.field private mLastMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

.field private mOnMediaKeyListenerUid:I

.field private mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

.field private mOnVolumeKeyLongPressListenerUid:I

.field private final mPriorityStack:Lcom/android/server/media/MediaSessionStack;

.field private mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

.field private mRestoredMediaButtonReceiverComponentType:I

.field private mRestoredMediaButtonReceiverUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;I)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;
    .param p2, "fullUserId"    # I

    .line 777
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iput p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 779
    new-instance v0, Lcom/android/server/media/MediaSessionStack;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/media/MediaSessionStack;-><init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 781
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$700(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    const-string/jumbo v2, "media_button_receiver"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "mediaButtonReceiverInfo":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 784
    return-void

    .line 786
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, "tokens":[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    array-length v2, v1

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 790
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 791
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverUserId:I

    .line 792
    array-length v2, v1

    if-ne v2, v3, :cond_2

    .line 793
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverComponentType:I

    goto :goto_0

    .line 795
    :cond_2
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 796
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getComponentType(Landroid/content/ComponentName;)I

    move-result v2

    iput v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverComponentType:I

    .line 798
    :goto_0
    return-void

    .line 788
    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Landroid/media/session/IOnMediaKeyListener;

    .line 753
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Landroid/media/session/ICallback;

    .line 753
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # I

    .line 753
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # I

    .line 753
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 753
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeStream:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # I

    .line 753
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeStream:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownMusicOnly:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Z

    .line 753
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownMusicOnly:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverComponentType:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverUserId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 753
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 753
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object p1
.end method

.method private getComponentType(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 913
    if-nez p1, :cond_0

    .line 914
    const/4 v0, 0x0

    return v0

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 918
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const v1, 0xc0001

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_1

    .line 923
    const/4 v2, 0x2

    return v2

    .line 926
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    goto :goto_0

    .line 925
    :catch_0
    move-exception v1

    .line 928
    :goto_0
    const v1, 0xc0004

    :try_start_1
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 932
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_2

    .line 933
    const/4 v2, 0x3

    return v2

    .line 936
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    goto :goto_1

    .line 935
    :catch_1
    move-exception v1

    .line 938
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method private getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 908
    :goto_0
    return-object v0
.end method

.method private pushAddressedPlayerChangedLocked()V
    .locals 3

    .line 886
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    if-nez v0, :cond_0

    .line 887
    return-void

    .line 890
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 891
    .local v0, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    if-eqz v0, :cond_1

    .line 892
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    .line 893
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    .line 892
    invoke-interface {v1, v2}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaSession(Landroid/media/session/MediaSession$Token;)V

    goto :goto_0

    .line 894
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 895
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 896
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    .line 897
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 895
    invoke-interface {v1, v2}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 898
    :cond_2
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 899
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 900
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 899
    invoke-interface {v1, v2}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v0    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_3
    :goto_0
    goto :goto_1

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionService"

    const-string v2, "Failed to pushAddressedPlayerChangedLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method


# virtual methods
.method public destroySessionsForUserLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 801
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 802
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

    .line 803
    .local v2, "session":Lcom/android/server/media/MediaSessionRecord;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, v2}, Lcom/android/server/media/MediaSessionService;->access$800(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V

    .line 804
    .end local v2    # "session":Lcom/android/server/media/MediaSessionRecord;
    goto :goto_0

    .line 805
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 808
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

    .line 810
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 811
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 812
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 813
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    if-ne v2, v3, :cond_0

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", profile_user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, "indent":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Volume key long-press listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Volume key long-press listener package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v5, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    .line 821
    invoke-static {v4, v5}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 820
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Media key listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Media key listener package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v5, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    .line 824
    invoke-static {v4, v5}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 823
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Last MediaButtonReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Restored MediaButtonReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Restored MediaButtonReceiverComponentType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverComponentType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Session2Tokens:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 833
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 834
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 835
    goto :goto_3

    .line 837
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/Session2Token;

    .line 838
    .local v6, "token":Landroid/media/Session2Token;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    .end local v6    # "token":Landroid/media/Session2Token;
    goto :goto_2

    .line 832
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 841
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method public onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "oldMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "newMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecord;

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media button session is changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 850
    if-eqz p1, :cond_0

    .line 851
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    goto :goto_0

    .line 858
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 853
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 854
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 855
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 857
    :cond_1
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    .line 858
    monitor-exit v0

    .line 859
    return-void

    .line 858
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 8
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 863
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    .line 864
    .local v0, "receiver":Landroid/app/PendingIntent;
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    .line 865
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 866
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverComponentType:I

    .line 868
    const-string v2, ""

    .line 869
    .local v2, "mediaButtonReceiverInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 871
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 872
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 873
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 874
    .local v4, "componentName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getComponentType(Landroid/content/ComponentName;)I

    move-result v5

    .line 875
    .local v5, "componentType":I
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v4, v6, v1

    const/4 v1, 0x1

    .line 876
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x2

    .line 877
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 875
    const-string v1, ","

    invoke-static {v1, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 880
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "componentName":Ljava/lang/String;
    .end local v5    # "componentType":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$700(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    const-string/jumbo v4, "media_button_receiver"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 883
    return-void
.end method
