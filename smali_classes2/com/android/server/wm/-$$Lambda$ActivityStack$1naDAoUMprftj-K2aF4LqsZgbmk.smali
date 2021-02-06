.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStack;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk;->f$0:Lcom/android/server/wm/ActivityStack;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk;->f$0:Lcom/android/server/wm/ActivityStack;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$1naDAoUMprftj-K2aF4LqsZgbmk;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityStack;->lambda$setWindowingMode$0$ActivityStack(IZ)V

    return-void
.end method
