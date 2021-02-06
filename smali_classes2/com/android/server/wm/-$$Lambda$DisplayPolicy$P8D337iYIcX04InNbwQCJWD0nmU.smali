.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU;->f$0:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU;->f$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->lambda$notifyDisplayReady$13$DisplayPolicy()V

    return-void
.end method
