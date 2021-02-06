.class public final synthetic Lcom/android/server/am/-$$Lambda$OomAdjuster$j3IvuemoJG_PvJj2IluuTqsAsvo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$OomAdjuster$j3IvuemoJG_PvJj2IluuTqsAsvo;->f$0:Lcom/android/server/am/OomAdjuster;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$OomAdjuster$j3IvuemoJG_PvJj2IluuTqsAsvo;->f$0:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$new$1$OomAdjuster(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
