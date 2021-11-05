.class public final synthetic Lcom/android/server/dreams/-$$Lambda$DreamController$DreamRecord$RZAkATuUi2Nb2UNKTKrQg_Oz3Cw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/-$$Lambda$DreamController$DreamRecord$RZAkATuUi2Nb2UNKTKrQg_Oz3Cw;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-object p2, p0, Lcom/android/server/dreams/-$$Lambda$DreamController$DreamRecord$RZAkATuUi2Nb2UNKTKrQg_Oz3Cw;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/dreams/-$$Lambda$DreamController$DreamRecord$RZAkATuUi2Nb2UNKTKrQg_Oz3Cw;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, p0, Lcom/android/server/dreams/-$$Lambda$DreamController$DreamRecord$RZAkATuUi2Nb2UNKTKrQg_Oz3Cw;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$onServiceConnected$1$DreamController$DreamRecord(Landroid/os/IBinder;)V

    return-void
.end method
