.class Lcom/android/server/power/WakeLockLog$TheLog$1;
.super Ljava/lang/Object;
.source "WakeLockLog.java"

# interfaces
.implements Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/WakeLockLog$TheLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/WakeLockLog$TheLog;


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$TheLog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/WakeLockLog$TheLog;

    .line 763
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexRemoved(I)V
    .locals 1
    .param p1, "index"    # I

    .line 765
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-static {v0, p1}, Lcom/android/server/power/WakeLockLog$TheLog;->access$200(Lcom/android/server/power/WakeLockLog$TheLog;I)V

    .line 766
    return-void
.end method
