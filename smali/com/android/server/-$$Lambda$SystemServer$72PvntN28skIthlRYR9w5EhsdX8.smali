.class public final synthetic Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;->f$0:Lcom/android/server/SystemServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;->f$0:Lcom/android/server/SystemServer;

    invoke-virtual {v0}, Lcom/android/server/SystemServer;->lambda$startOtherServices$4$SystemServer()V

    return-void
.end method
