.class public final synthetic Lcom/android/server/backup/-$$Lambda$Trampoline$RB5ywBeynPqhAQ6VHW4qi9U4c84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/Trampoline;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/Trampoline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$Trampoline$RB5ywBeynPqhAQ6VHW4qi9U4c84;->f$0:Lcom/android/server/backup/Trampoline;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$Trampoline$RB5ywBeynPqhAQ6VHW4qi9U4c84;->f$0:Lcom/android/server/backup/Trampoline;

    invoke-virtual {v0}, Lcom/android/server/backup/Trampoline;->lambda$initializeService$0$Trampoline()V

    return-void
.end method
