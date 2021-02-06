.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$s8aJAJv5Mq4hljFdutdcLenli4o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$Task$s8aJAJv5Mq4hljFdutdcLenli4o;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$Task$s8aJAJv5Mq4hljFdutdcLenli4o;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p1}, Lcom/android/server/wm/Task;->lambda$performClearTask$2(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
