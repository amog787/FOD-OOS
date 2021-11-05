.class public final synthetic Lcom/android/server/dreams/-$$Lambda$DreamController$DreamRecord$dxWbx4rgpHpZ1Hx0p_kP0KmKxQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/-$$Lambda$DreamController$DreamRecord$dxWbx4rgpHpZ1Hx0p_kP0KmKxQk;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/-$$Lambda$DreamController$DreamRecord$dxWbx4rgpHpZ1Hx0p_kP0KmKxQk;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$onServiceDisconnected$2$DreamController$DreamRecord()V

    return-void
.end method
