.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$LocalService$2LeEPdXnhP_I5Tz5a2OSkhUL0oc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityServiceConnectionsHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$LocalService;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$LocalService$2LeEPdXnhP_I5Tz5a2OSkhUL0oc;->f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$LocalService$2LeEPdXnhP_I5Tz5a2OSkhUL0oc;->f$1:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$LocalService$2LeEPdXnhP_I5Tz5a2OSkhUL0oc;->f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$LocalService$2LeEPdXnhP_I5Tz5a2OSkhUL0oc;->f$1:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService$LocalService;->lambda$disconnectActivityFromServices$0$ActivityManagerService$LocalService(Lcom/android/server/wm/ActivityServiceConnectionsHolder;Ljava/lang/Object;)V

    return-void
.end method
