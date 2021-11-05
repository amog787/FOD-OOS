.class Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;
.super Ljava/lang/Object;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/StagingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalIntentReceiverAsync"
.end annotation


# instance fields
.field final mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalSender:Landroid/content/IIntentSender$Stub;


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1233
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Intent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    new-instance v0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync$1;-><init>(Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;->mLocalSender:Landroid/content/IIntentSender$Stub;

    .line 1234
    iput-object p1, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;->mConsumer:Ljava/util/function/Consumer;

    .line 1235
    return-void
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    .line 1246
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method
