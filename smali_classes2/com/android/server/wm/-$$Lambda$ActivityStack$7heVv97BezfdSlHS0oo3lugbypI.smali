.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ActivityStack;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z

.field private final synthetic f$4:Z

.field private final synthetic f$5:Z

.field private final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;IZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$0:Lcom/android/server/wm/ActivityStack;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$4:Z

    iput-boolean p6, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$5:Z

    iput-boolean p7, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$0:Lcom/android/server/wm/ActivityStack;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$3:Z

    iget-boolean v4, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$4:Z

    iget-boolean v5, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$5:Z

    iget-boolean v6, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;->f$6:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->lambda$setWindowingMode$0$ActivityStack(IZZZZZ)V

    return-void
.end method
