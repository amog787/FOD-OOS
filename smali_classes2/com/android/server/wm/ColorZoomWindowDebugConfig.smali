.class public Lcom/android/server/wm/ColorZoomWindowDebugConfig;
.super Ljava/lang/Object;
.source "ColorZoomWindowDebugConfig.java"


# static fields
.field public static DEBUG_LIFE_CYCLE:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorZoomWindowDebugConfig"

.field private static volatile sInstance:Lcom/android/server/wm/ColorZoomWindowDebugConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->DEBUG_LIFE_CYCLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/ColorZoomWindowDebugConfig;
    .locals 2

    .line 29
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->sInstance:Lcom/android/server/wm/ColorZoomWindowDebugConfig;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/android/server/wm/ColorZoomWindowDebugConfig;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->sInstance:Lcom/android/server/wm/ColorZoomWindowDebugConfig;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/android/server/wm/ColorZoomWindowDebugConfig;

    invoke-direct {v1}, Lcom/android/server/wm/ColorZoomWindowDebugConfig;-><init>()V

    sput-object v1, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->sInstance:Lcom/android/server/wm/ColorZoomWindowDebugConfig;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->sInstance:Lcom/android/server/wm/ColorZoomWindowDebugConfig;

    return-object v0
.end method


# virtual methods
.method public disableDebugLifeCycle()V
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableDebugLifeCycle before: DEBUG_LIFE_CYCLE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->DEBUG_LIFE_CYCLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowDebugConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->DEBUG_LIFE_CYCLE:Z

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableDebugLifeCycle after: DEBUG_LIFE_CYCLE = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->DEBUG_LIFE_CYCLE:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public enableDebugLifeCycle()V
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableDebugLifeCycle before: DEBUG_LIFE_CYCLE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->DEBUG_LIFE_CYCLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowDebugConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->DEBUG_LIFE_CYCLE:Z

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDebugLifeCycle after: DEBUG_LIFE_CYCLE = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->DEBUG_LIFE_CYCLE:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method
