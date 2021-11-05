.class final Lcom/android/server/tv/TvInputManagerService$TvInputState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TvInputState"
.end annotation


# instance fields
.field private info:Landroid/media/tv/TvInputInfo;

.field private state:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2314
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService$1;

    .line 2309
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 2309
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .param p1, "x1"    # Landroid/media/tv/TvInputInfo;

    .line 2309
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 2309
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .param p1, "x1"    # I

    .line 2309
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
