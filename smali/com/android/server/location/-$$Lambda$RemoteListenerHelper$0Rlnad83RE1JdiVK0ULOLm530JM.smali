.class public final synthetic Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$0Rlnad83RE1JdiVK0ULOLm530JM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/RemoteListenerHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$0Rlnad83RE1JdiVK0ULOLm530JM;->f$0:Lcom/android/server/location/RemoteListenerHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$0Rlnad83RE1JdiVK0ULOLm530JM;->f$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-virtual {v0}, Lcom/android/server/location/RemoteListenerHelper;->lambda$tryUnregister$0$RemoteListenerHelper()V

    return-void
.end method
