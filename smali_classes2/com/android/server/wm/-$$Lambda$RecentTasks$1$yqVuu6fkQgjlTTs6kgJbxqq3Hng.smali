.class public final synthetic Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/RecentTasks$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentTasks$1;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;->f$0:Lcom/android/server/wm/RecentTasks$1;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;->f$1:I

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;->f$2:I

    iput p4, p0, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;->f$0:Lcom/android/server/wm/RecentTasks$1;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;->f$1:I

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;->f$2:I

    iget v3, p0, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wm/RecentTasks$1;->lambda$onPointerEvent$0$RecentTasks$1(IIILjava/lang/Object;)V

    return-void
.end method
