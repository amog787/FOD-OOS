.class final Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public event:Landroid/view/MotionEvent;

.field private mInPool:Z

.field private mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field public policyFlags:I

.field public rawEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1063
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1060
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .param p1, "x1"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1060
    iput-object p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    return-object p1
.end method

.method private clear()V
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$900(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1122
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$900(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 1123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 1124
    return-void
.end method

.method static countOf(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;I)I
    .locals 2
    .param p0, "info"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .param p1, "eventType"    # I

    .line 1127
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1129
    invoke-static {v1, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1128
    return v0
.end method

.method private initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 1100
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1101
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 1102
    iput p3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 1103
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 1076
    sget-object v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1077
    :try_start_0
    invoke-static {}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->obtainInternal()Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    .line 1078
    .local v1, "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1079
    monitor-exit v0

    return-object v1

    .line 1080
    .end local v1    # "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static obtainInternal()Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .locals 2

    .line 1086
    sget v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    if-lez v0, :cond_0

    .line 1087
    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 1088
    sget-object v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1089
    .local v0, "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    sput-object v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1090
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1091
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    goto :goto_0

    .line 1093
    .end local v0    # "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :cond_0
    new-instance v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;-><init>()V

    .line 1095
    .restart local v0    # "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :goto_0
    return-object v0
.end method

.method public static toString(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1133
    const-string v0, ""

    if-nez p0, :cond_0

    .line 1134
    goto :goto_0

    .line 1136
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1135
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1136
    invoke-static {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    :goto_0
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .line 1106
    sget-object v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    if-nez v1, :cond_1

    .line 1110
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->clear()V

    .line 1111
    sget v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 1112
    sget v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 1113
    sget-object v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    iput-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1114
    sput-object p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1115
    iput-boolean v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    .line 1117
    :cond_0
    monitor-exit v0

    .line 1118
    return-void

    .line 1108
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already recycled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    throw v1

    .line 1117
    .restart local p0    # "this":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
