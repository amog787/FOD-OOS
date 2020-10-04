.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DUCKING_IN_APP_SDK_LEVEL:I = 0x19

.field static final ENFORCE_DUCKING:Z = true

.field static final ENFORCE_DUCKING_FOR_NEW:Z = true

.field static final ENFORCE_MUTING_FOR_RING_OR_CALL:Z = true

.field private static final MAX_STACK_SIZE:I = 0x64

.field private static final RING_CALL_MUTING_ENFORCEMENT_DELAY_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final USAGES_TO_MUTE_IN_RING_OR_CALL:[I

.field static fromPhoneCall:Z

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mExtFocusChangeCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mExtFocusChangeLock"
        }
    .end annotation
.end field

.field private final mExtFocusChangeLock:Ljava/lang/Object;

.field private mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusOwnersForFocusPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation
.end field

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mGameList:[Ljava/lang/String;

.field private mNotifyFocusOwnerOnDuck:Z

.field private mOPDiagnoseManager:Landroid/os/OPDiagnoseManager;

.field private mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation
.end field

.field private mRingOrCallActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/audio/MediaFocusControl;->fromPhoneCall:Z

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 185
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x32

    const-string v2, "focus commands as seen by MediaFocusControl"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 780
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xe
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V
    .locals 4
    .param p1, "cntxt"    # Landroid/content/Context;
    .param p2, "pfe"    # Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 110
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    .line 116
    const-string v1, "com.nextwave.wcc2"

    const-string v2, "com.king.candycrushsaga"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mGameList:[Ljava/lang/String;

    .line 284
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 485
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 493
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 531
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 537
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 543
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 130
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 131
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 132
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 136
    new-array v1, v1, [I

    const/16 v2, 0xb8

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "opdiagnose"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/OPDiagnoseManager;

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mOPDiagnoseManager:Landroid/os/OPDiagnoseManager;

    .line 141
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 72
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 72
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 72
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/MediaFocusControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 72
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    return v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .line 72
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .line 72
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    return-object v0
.end method

.method private canReassignAudioFocus()Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x0

    return v0

    .line 419
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 752
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 753
    .local v0, "owners":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 754
    .local v1, "ownerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 756
    .local v2, "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 757
    .local v3, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    .line 758
    .end local v2    # "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    .end local v3    # "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_0

    .line 759
    :cond_0
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 291
    const-string v0, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 294
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 297
    :cond_0
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v2, :cond_1

    .line 299
    const-string v2, "No external focus policy\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External focus policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", focus owners:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V

    .line 304
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Notify on duck:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " In ring or call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    return-void

    .line 304
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected static getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "focusGain"    # I
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 790
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 811
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 799
    :pswitch_1
    const/16 v0, 0x2bc

    return v0

    .line 808
    :pswitch_2
    const/16 v0, 0x1f4

    return v0

    .line 793
    :pswitch_3
    const/16 v0, 0x3e8

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .locals 1
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    .line 423
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x110

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    sget-boolean v1, Lcom/android/server/audio/MediaFocusControl;->fromPhoneCall:Z

    if-eqz v1, :cond_0

    .line 244
    const-string v1, "MediaFocusControl"

    const-string/jumbo v2, "notifyTopOfAudioFocusStack fromPhoneCall true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/FocusRequester;->handleFocusGainForPhoneCall(I)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 258
    :cond_2
    :goto_0
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V
    .locals 5
    .param p1, "focusGain"    # I
    .param p2, "fr"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 271
    .local v0, "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 272
    .local v2, "focusLoser":Lcom/android/server/audio/FocusRequester;
    nop

    .line 273
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v3

    .line 274
    .local v3, "isDefinitiveLoss":Z
    if-eqz v3, :cond_0

    .line 275
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v2    # "focusLoser":Lcom/android/server/audio/FocusRequester;
    .end local v3    # "isDefinitiveLoss":Z
    :cond_0
    goto :goto_0

    .line 278
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 279
    .local v2, "clientToRemove":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 281
    .end local v2    # "clientToRemove":Ljava/lang/String;
    goto :goto_1

    .line 282
    :cond_2
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .locals 5
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 438
    .local v0, "lastLockedFocusOwnerIndex":I
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 439
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v3}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    move v0, v1

    .line 438
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 443
    .end local v1    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 445
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v3, "MediaFocusControl"

    const-string v4, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v3}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 449
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    return v2

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, p1, v0}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 453
    const/4 v1, 0x2

    return v1
.end method

.method private removeFocusEntryForExtPolicy(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x0

    .line 391
    .local v0, "released":Z
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 392
    .local v1, "owners":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 393
    .local v2, "ownerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 395
    .local v3, "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 396
    .local v4, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v4, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 397
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 398
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 399
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    .line 400
    goto :goto_1

    .line 402
    .end local v3    # "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    .end local v4    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1
    goto :goto_0

    .line 403
    :cond_2
    :goto_1
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 324
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 325
    if-eqz p3, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    .line 327
    .local v1, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v1}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    .line 328
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 330
    .end local v1    # "afi":Landroid/media/AudioFocusInfo;
    :cond_0
    if-eqz p2, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 334
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1
    goto :goto_1

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 340
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 341
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 342
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaFocusControl"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 347
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 349
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_3
    goto :goto_0

    .line 351
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_4
    :goto_1
    return-void
.end method

.method private removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 360
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 363
    .local v0, "isTopOfStackForClientToRemove":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 364
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 366
    .local v2, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFocus  removeFocusStackEntryOnDeath(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaFocusControl"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 370
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 372
    .end local v2    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1
    goto :goto_1

    .line 373
    :cond_2
    if-eqz v0, :cond_3

    .line 376
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 378
    :cond_3
    return-void
.end method

.method private runAudioCheckerForRingOrCallAsync(Z)V
    .locals 1
    .param p1, "enteringRingOrCall"    # Z

    .line 1071
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;Z)V

    .line 1090
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$2;->start()V

    .line 1091
    return-void
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .locals 16
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .line 990
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abandonAudioFocus() from uid/pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 994
    const-string v3, "MediaFocusControl"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 990
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 999
    const/4 v13, 0x0

    move v0, v13

    .local v0, "i":I
    :goto_0
    const/4 v14, 0x1

    :try_start_0
    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mGameList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1000
    if-eqz v12, :cond_0

    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mGameList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1001
    const-string/jumbo v2, "isSpecialGameplaying=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1002
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParameters isSpecialGameplaying=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    goto :goto_1

    .line 999
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1007
    .end local v0    # "i":I
    :cond_1
    :goto_1
    sget-object v15, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :try_start_1
    iget-object v0, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v0, :cond_2

    .line 1010
    new-instance v0, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v10}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 1013
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1014
    monitor-exit v15

    return v14

    .line 1018
    .end local v0    # "afi":Landroid/media/AudioFocusInfo;
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 1019
    invoke-virtual {v2, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    move v2, v14

    goto :goto_2

    :cond_3
    move v2, v13

    :goto_2
    and-int/2addr v0, v2

    .line 1020
    .local v0, "exitingRingOrCall":Z
    if-eqz v0, :cond_4

    iput-boolean v13, v1, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 1024
    :cond_4
    new-array v2, v14, [I

    const/16 v3, 0x110

    aput v3, v2, v13

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1025
    sput-boolean v13, Lcom/android/server/audio/MediaFocusControl;->fromPhoneCall:Z

    .line 1026
    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1027
    const-string v2, "MediaFocusControl"

    const-string v4, " IN_VOICE_COMM_FOCUS_ID"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    sput-boolean v14, Lcom/android/server/audio/MediaFocusControl;->fromPhoneCall:Z

    .line 1033
    :cond_5
    invoke-direct {v1, v11, v14, v14}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1036
    new-array v2, v14, [I

    aput v3, v2, v13

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1037
    sput-boolean v13, Lcom/android/server/audio/MediaFocusControl;->fromPhoneCall:Z

    .line 1041
    :cond_6
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_7

    .line 1042
    invoke-direct {v1, v13}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 1044
    .end local v0    # "exitingRingOrCall":Z
    :cond_7
    monitor-exit v15

    .line 1051
    goto :goto_3

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/audio/MediaFocusControl;
    .end local p1    # "fl":Landroid/media/IAudioFocusDispatcher;
    .end local p2    # "clientId":Ljava/lang/String;
    .end local p3    # "aa":Landroid/media/AudioAttributes;
    .end local p4    # "callingPackageName":Ljava/lang/String;
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1045
    .restart local p0    # "this":Lcom/android/server/audio/MediaFocusControl;
    .restart local p1    # "fl":Landroid/media/IAudioFocusDispatcher;
    .restart local p2    # "clientId":Ljava/lang/String;
    .restart local p3    # "aa":Landroid/media/AudioAttributes;
    .restart local p4    # "callingPackageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaFocusControl"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 1055
    .end local v0    # "cme":Ljava/util/ConcurrentModificationException;
    :goto_3
    new-array v0, v14, [I

    const/16 v2, 0xb8

    aput v2, v0, v13

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1056
    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_AUDIO_FOCUS_CHANGED:I

    const-string v2, "abandonAudioFocus granted!"

    invoke-virtual {v1, v0, v2, v14}, Lcom/android/server/audio/MediaFocusControl;->recordOPDiagnoseEvent(ILjava/lang/String;Z)V

    .line 1060
    :cond_8
    return v14
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 6
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 496
    if-nez p1, :cond_0

    .line 497
    return-void

    .line 499
    :cond_0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    const/4 v1, 0x0

    .line 501
    .local v1, "found":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 502
    .local v3, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    const/4 v1, 0x1

    .line 504
    goto :goto_1

    .line 506
    .end local v3    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_1
    goto :goto_0

    .line 507
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 508
    monitor-exit v0

    return-void

    .line 510
    :cond_3
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 513
    .end local v1    # "found":Z
    monitor-exit v0

    .line 514
    return-void

    .line 513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected discardAudioFocusOwner()V
    .locals 5

    .line 224
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 228
    .local v1, "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 230
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 232
    .end local v1    # "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_0
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I
    .locals 4
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I

    .line 732
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 735
    monitor-exit v0

    return v2

    .line 738
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 739
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_0

    .line 741
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 743
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :goto_0
    if-nez v1, :cond_2

    .line 745
    monitor-exit v0

    return v2

    .line 747
    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 748
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .locals 1
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;
    .param p2, "loser"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z

    .line 156
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/audio/PlayerFocusEnforcer;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 147
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 150
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .locals 2

    .line 762
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    monitor-exit v0

    return v1

    .line 768
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasAudioFocusUsers()Z
    .locals 2

    .line 213
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .locals 1

    .line 491
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method public mutePlayersForCall([I)V
    .locals 1
    .param p1, "usagesToMute"    # [I

    .line 166
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    .line 167
    return-void
.end method

.method noFocusForSuspendedApp(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 189
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 191
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v2, "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 194
    .local v3, "focusOwner":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v3, p2}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "focus owner:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " getting AUDIOFOCUS_LOSS due to app suspension"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v6, "MediaFocusControl"

    .line 200
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 196
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 202
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    .line 204
    .end local v3    # "focusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_0
    goto :goto_0

    .line 205
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 207
    .local v4, "clientToRemove":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 208
    .end local v4    # "clientToRemove":Ljava/lang/String;
    goto :goto_1

    .line 209
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    .end local v2    # "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z
    .locals 4
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 709
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v0, :cond_0

    .line 710
    const/4 v0, 0x0

    return v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 713
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    if-eqz v0, :cond_1

    .line 714
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 718
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    goto :goto_0

    .line 719
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call notifyAudioFocusAbandon() on IAudioPolicyCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 721
    invoke-interface {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 720
    const-string v3, "MediaFocusControl"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    .locals 16
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p3, "cb"    # Landroid/os/IBinder;

    .line 654
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    iget-object v1, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 655
    :try_start_0
    iget-wide v2, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    invoke-virtual {v8, v2, v3}, Landroid/media/AudioFocusInfo;->setGen(J)V

    .line 656
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/audio/FocusRequester;

    .line 658
    .local v10, "existingFr":Lcom/android/server/audio/FocusRequester;
    const/4 v0, 0x0

    .line 659
    .local v0, "keepTrack":Z
    if-eqz v10, :cond_1

    .line 660
    move-object/from16 v11, p2

    invoke-virtual {v10, v11}, Lcom/android/server/audio/FocusRequester;->hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {v10}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 662
    const/4 v0, 0x1

    move v12, v0

    goto :goto_0

    .line 660
    :cond_0
    move v12, v0

    goto :goto_0

    .line 665
    :cond_1
    move-object/from16 v11, p2

    const/4 v0, 0x1

    move v12, v0

    .line 667
    .end local v0    # "keepTrack":Z
    .local v12, "keepTrack":Z
    :goto_0
    const/4 v13, 0x0

    if-eqz v12, :cond_2

    .line 668
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v0, v7, v9}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    move-object v14, v0

    .line 670
    .local v14, "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :try_start_1
    invoke-interface {v9, v14, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 674
    nop

    .line 676
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v15

    new-instance v6, Lcom/android/server/audio/FocusRequester;

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v14

    move-object v13, v6

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    invoke-virtual {v0, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 671
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1

    .line 682
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v14    # "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v8, v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 683
    return v1

    .line 684
    :catch_1
    move-exception v0

    .line 685
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call notifyAudioFocusRequest() on IAudioPolicyCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 686
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 685
    const-string v2, "MediaFocusControl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1

    .line 656
    .end local v10    # "existingFr":Lcom/android/server/audio/FocusRequester;
    .end local v12    # "keepTrack":Z
    :catchall_0
    move-exception v0

    move-object/from16 v11, p2

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 2
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 578
    move-object v0, p1

    .line 579
    .local v0, "pcb2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 597
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 598
    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .locals 5
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 604
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 607
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    goto :goto_1

    .line 608
    :catch_0
    move-exception v2

    .line 609
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 609
    const-string v4, "MediaFocusControl"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 615
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OpAppRecordInjector;->noteStartAudio(II)V

    .line 617
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .locals 5
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    .line 623
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 626
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    goto :goto_1

    .line 627
    :catch_0
    move-exception v2

    .line 628
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 628
    const-string v4, "MediaFocusControl"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 634
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OpAppRecordInjector;->noteStopAudio(II)V

    .line 636
    return-void
.end method

.method public recordOPDiagnoseEvent(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "savediaglog"    # Z

    .line 1097
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mOPDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0, p1, p2}, Landroid/os/OPDiagnoseManager;->writeDiagData(ILjava/lang/String;)Z

    .line 1099
    if-eqz p3, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mOPDiagnoseManager:Landroid/os/OPDiagnoseManager;

    invoke-virtual {v0, p1}, Landroid/os/OPDiagnoseManager;->saveDiagLog(I)Z

    goto :goto_0

    .line 1103
    :cond_0
    const-string v0, "MediaFocusControl"

    const-string/jumbo v1, "mOPDiagnoseManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_1
    :goto_0
    return-void
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 517
    if-nez p1, :cond_0

    .line 518
    return-void

    .line 520
    :cond_0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 522
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 523
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 524
    goto :goto_1

    .line 526
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_1
    goto :goto_0

    .line 527
    :cond_2
    :goto_1
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZ)I
    .locals 24
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "sdk"    # I
    .param p9, "forceDuck"    # Z

    .line 819
    move-object/from16 v13, p0

    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v12, p5

    move-object/from16 v11, p6

    move/from16 v10, p7

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAudioFocus() from uid/pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callingPack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sdk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p8

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 826
    const-string v2, "MediaFocusControl"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 819
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 831
    const/4 v8, 0x0

    :try_start_0
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 832
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 831
    invoke-virtual {v0, v11, v8, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    .local v0, "packageContext":Landroid/content/Context;
    move-object/from16 v16, v0

    goto :goto_0

    .line 833
    .end local v0    # "packageContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create package context fail from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaFocusControl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 838
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v16, "packageContext":Landroid/content/Context;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, p1

    invoke-static {v0, v7}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    const-string v0, "MediaFocusControl"

    const-string v1, " We block audio focus here"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return v8

    .line 845
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mGameList:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 846
    if-eqz v11, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    const-string/jumbo v1, "isSpecialGameplaying=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setParameters isSpecialGameplaying=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaFocusControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    goto :goto_2

    .line 845
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 854
    .end local v0    # "i":I
    :cond_2
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_3

    .line 855
    const-string v0, "MediaFocusControl"

    const-string v1, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return v8

    .line 859
    :cond_3
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v11}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 861
    return v8

    .line 864
    :cond_4
    sget-object v17, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v17

    .line 865
    :try_start_1
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/16 v6, 0x64

    if-le v0, v6, :cond_5

    .line 866
    const-string v0, "MediaFocusControl"

    const-string v1, "Max AudioFocus stack size reached, failing requestAudioFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    monitor-exit v17

    return v8

    .line 870
    :cond_5
    iget-boolean v0, v13, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const/4 v5, 0x1

    if-nez v0, :cond_6

    move v0, v5

    goto :goto_3

    :cond_6
    move v0, v8

    :goto_3
    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 871
    invoke-virtual {v1, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    move v1, v5

    goto :goto_4

    :cond_7
    move v1, v8

    :goto_4
    and-int v18, v0, v1

    .line 872
    .local v18, "enteringRingOrCall":Z
    if-eqz v18, :cond_8

    iput-boolean v5, v13, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 875
    :cond_8
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v0, :cond_9

    .line 877
    new-instance v0, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v19, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v21, v6

    move/from16 v6, p2

    move/from16 v7, v19

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    move-object v9, v0

    .local v0, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    goto :goto_5

    .line 881
    .end local v0    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :cond_9
    move/from16 v21, v6

    const/4 v0, 0x0

    move-object v9, v0

    .line 885
    .local v9, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :goto_5
    const/4 v0, 0x0

    .line 886
    .local v0, "focusGrantDelayed":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_b

    .line 887
    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_a

    .line 888
    monitor-exit v17

    const/4 v8, 0x0

    return v8

    .line 893
    :cond_a
    const/4 v8, 0x0

    const/4 v0, 0x1

    move/from16 v19, v0

    goto :goto_6

    .line 886
    :cond_b
    const/4 v8, 0x0

    move/from16 v19, v0

    .line 898
    .end local v0    # "focusGrantDelayed":Z
    .local v19, "focusGrantDelayed":Z
    :goto_6
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v0, :cond_d

    .line 899
    move-object/from16 v7, p4

    invoke-virtual {v13, v9, v7, v15}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 902
    monitor-exit v17

    return v21

    .line 905
    :cond_c
    monitor-exit v17

    return v8

    .line 912
    :cond_d
    move-object/from16 v7, p4

    new-instance v0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v0, v13, v15}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v6, v0

    .line 915
    .local v6, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :try_start_2
    invoke-interface {v15, v6, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 920
    nop

    .line 922
    :try_start_3
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_f

    :try_start_4
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, v12}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 925
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 926
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    if-ne v1, v14, :cond_e

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v1

    if-ne v1, v10, :cond_e

    .line 929
    invoke-interface {v15, v6, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 930
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v13, v1, v5}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 932
    monitor-exit v17

    return v5

    .line 926
    :cond_e
    const/4 v5, 0x1

    .line 936
    if-nez v19, :cond_10

    .line 937
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 939
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    .line 922
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_f
    const/4 v5, 0x1

    .line 944
    :cond_10
    :goto_7
    :try_start_5
    invoke-direct {v13, v12, v8, v8}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 946
    new-instance v0, Lcom/android/server/audio/FocusRequester;

    .line 947
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    move-object v1, v0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p7

    move v15, v5

    move-object/from16 v5, p4

    move-object/from16 v21, v6

    .end local v6    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .local v21, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move/from16 v22, v8

    move-object/from16 v8, v21

    move-object/from16 v23, v9

    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .local v23, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    move-object/from16 v9, p6

    move/from16 v10, v20

    move-object/from16 v11, p0

    move/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 948
    .local v0, "nfr":Lcom/android/server/audio/FocusRequester;
    if-eqz v19, :cond_12

    .line 951
    :try_start_6
    invoke-direct {v13, v0}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v1

    .line 952
    .local v1, "requestResult":I
    if-eqz v1, :cond_11

    .line 953
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v13, v2, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 955
    :cond_11
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return v1

    .line 972
    .end local v0    # "nfr":Lcom/android/server/audio/FocusRequester;
    .end local v1    # "requestResult":I
    .end local v18    # "enteringRingOrCall":Z
    .end local v19    # "focusGrantDelayed":Z
    .end local v21    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v23    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :catchall_0
    move-exception v0

    move-object/from16 v4, p3

    move/from16 v1, p9

    goto/16 :goto_a

    .line 958
    .restart local v0    # "nfr":Lcom/android/server/audio/FocusRequester;
    .restart local v18    # "enteringRingOrCall":Z
    .restart local v19    # "focusGrantDelayed":Z
    .restart local v21    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v23    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :cond_12
    :try_start_7
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v1, :cond_13

    .line 959
    move/from16 v1, p9

    :try_start_8
    invoke-direct {v13, v14, v0, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    goto :goto_8

    .line 958
    :cond_13
    move/from16 v1, p9

    .line 963
    :goto_8
    iget-object v2, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    invoke-virtual {v0, v15}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    .line 966
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v13, v2, v15}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 969
    and-int/lit8 v2, v18, 0x1

    if-eqz v2, :cond_14

    .line 970
    invoke-direct {v13, v15}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 972
    .end local v0    # "nfr":Lcom/android/server/audio/FocusRequester;
    .end local v18    # "enteringRingOrCall":Z
    .end local v19    # "focusGrantDelayed":Z
    .end local v21    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v23    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :cond_14
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 976
    new-array v0, v15, [I

    const/16 v2, 0xb8

    aput v2, v0, v22

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 977
    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_AUDIO_FOCUS_CHANGED:I

    const-string/jumbo v2, "requestAudioFocus granted!"

    invoke-virtual {v13, v0, v2, v15}, Lcom/android/server/audio/MediaFocusControl;->recordOPDiagnoseEvent(ILjava/lang/String;Z)V

    .line 981
    :cond_15
    return v15

    .line 972
    :catchall_1
    move-exception v0

    move/from16 v1, p9

    :goto_9
    move-object/from16 v4, p3

    goto :goto_a

    .line 916
    .restart local v6    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v18    # "enteringRingOrCall":Z
    .restart local v19    # "focusGrantDelayed":Z
    :catch_1
    move-exception v0

    move/from16 v1, p9

    move-object/from16 v21, v6

    move/from16 v22, v8

    move-object/from16 v23, v9

    move-object v2, v0

    .end local v6    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v21    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v23    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    move-object v0, v2

    .line 918
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v4, p3

    :try_start_a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " binder death"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    monitor-exit v17

    return v22

    .line 972
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v18    # "enteringRingOrCall":Z
    .end local v19    # "focusGrantDelayed":Z
    .end local v21    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v23    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move/from16 v1, p9

    move-object v4, v15

    :goto_a
    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_a
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .line 488
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 489
    return-void
.end method

.method setFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .locals 2
    .param p1, "policy"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "isTestFocusPolicy"    # Z

    .line 547
    if-nez p1, :cond_0

    .line 548
    return-void

    .line 550
    :cond_0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    if-eqz p2, :cond_1

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 554
    :cond_1
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 555
    monitor-exit v0

    .line 556
    return-void

    .line 555
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V
    .locals 5
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 692
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGen()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 694
    monitor-exit v0

    return-void

    .line 696
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 698
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {v0, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusResultFromExtPolicy(I)V

    .line 701
    :cond_1
    return-void

    .line 696
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unduckPlayers(Lcom/android/server/audio/FocusRequester;)V
    .locals 1
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;

    .line 161
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->unduckPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 162
    return-void
.end method

.method public unmutePlayersForCall()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    .line 172
    return-void
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .line 1065
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1066
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1067
    monitor-exit v0

    .line 1068
    return-void

    .line 1067
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unsetFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .locals 2
    .param p1, "policy"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "isTestFocusPolicy"    # Z

    .line 559
    if-nez p1, :cond_0

    .line 560
    return-void

    .line 562
    :cond_0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-ne v1, p1, :cond_2

    .line 564
    if-eqz p2, :cond_1

    .line 566
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    goto :goto_0

    .line 568
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 571
    :cond_2
    :goto_0
    monitor-exit v0

    .line 572
    return-void

    .line 571
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
