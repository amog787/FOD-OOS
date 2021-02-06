.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$_Pdy4bcIQznd9vOyPJW9xGcoMlI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStack;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;ZLjava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$_Pdy4bcIQznd9vOyPJW9xGcoMlI;->f$0:Lcom/android/server/wm/ActivityStack;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$_Pdy4bcIQznd9vOyPJW9xGcoMlI;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$_Pdy4bcIQznd9vOyPJW9xGcoMlI;->f$2:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$_Pdy4bcIQznd9vOyPJW9xGcoMlI;->f$0:Lcom/android/server/wm/ActivityStack;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$_Pdy4bcIQznd9vOyPJW9xGcoMlI;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$_Pdy4bcIQznd9vOyPJW9xGcoMlI;->f$2:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityStack;->lambda$dump$9$ActivityStack(ZLjava/io/PrintWriter;)V

    return-void
.end method
