.class public final synthetic Lcom/android/server/am/-$$Lambda$ProcessRecord$Cb3MKja7_iTlaFQrvQTzPvLyoT8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ProcessRecord$Cb3MKja7_iTlaFQrvQTzPvLyoT8;->f$0:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ProcessRecord$Cb3MKja7_iTlaFQrvQTzPvLyoT8;->f$0:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->lambda$appNotResponding$1$ProcessRecord()V

    return-void
.end method
