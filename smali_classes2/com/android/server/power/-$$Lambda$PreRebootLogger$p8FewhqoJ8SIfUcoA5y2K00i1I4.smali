.class public final synthetic Lcom/android/server/power/-$$Lambda$PreRebootLogger$p8FewhqoJ8SIfUcoA5y2K00i1I4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/-$$Lambda$PreRebootLogger$p8FewhqoJ8SIfUcoA5y2K00i1I4;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/power/-$$Lambda$PreRebootLogger$p8FewhqoJ8SIfUcoA5y2K00i1I4;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/-$$Lambda$PreRebootLogger$p8FewhqoJ8SIfUcoA5y2K00i1I4;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/power/-$$Lambda$PreRebootLogger$p8FewhqoJ8SIfUcoA5y2K00i1I4;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1}, Lcom/android/server/power/PreRebootLogger;->lambda$dump$0(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method
