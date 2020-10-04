.class public final synthetic Lcom/android/server/-$$Lambda$AlarmManagerService$ekOL-W-d04N5tL87W3U8JwL7IzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$ekOL-W-d04N5tL87W3U8JwL7IzE;->f$0:Lcom/android/server/AlarmManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$AlarmManagerService$ekOL-W-d04N5tL87W3U8JwL7IzE;->f$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->lambda$interactiveStateChangedLocked$6$AlarmManagerService()V

    return-void
.end method
