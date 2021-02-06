.class Lcom/android/server/DynamicSystemService$GsiServiceCallback;
.super Landroid/gsi/IGsiServiceCallback$Stub;
.source "DynamicSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DynamicSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GsiServiceCallback"
.end annotation


# instance fields
.field private mResult:I

.field final synthetic this$0:Lcom/android/server/DynamicSystemService;


# direct methods
.method constructor <init>(Lcom/android/server/DynamicSystemService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/DynamicSystemService;

    .line 69
    iput-object p1, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->this$0:Lcom/android/server/DynamicSystemService;

    invoke-direct {p0}, Landroid/gsi/IGsiServiceCallback$Stub;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    return v0
.end method

.method public declared-synchronized onResult(I)V
    .locals 0
    .param p1, "result"    # I

    monitor-enter p0

    .line 74
    :try_start_0
    iput p1, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 73
    .end local p0    # "this":Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    .end local p1    # "result":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
