.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$UZ6heBvW792l5X1X86VJbao61T4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$UZ6heBvW792l5X1X86VJbao61T4;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$UZ6heBvW792l5X1X86VJbao61T4;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$onBootCompleted$5$RollbackManagerServiceImpl(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
