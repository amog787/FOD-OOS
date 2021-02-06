.class Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;
.super Ljava/lang/Object;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/StagingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalIntentReceiverSync"
.end annotation


# instance fields
.field private mLocalSender:Landroid/content/IIntentSender$Stub;

.field private final mResult:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1228
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1230
    new-instance v0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync$1;-><init>(Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->mLocalSender:Landroid/content/IIntentSender$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/StagingManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/StagingManager$1;

    .line 1227
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;

    .line 1227
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    .line 1244
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getResult()Landroid/content/Intent;
    .locals 2

    .line 1249
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverSync;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
