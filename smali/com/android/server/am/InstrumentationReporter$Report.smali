.class final Lcom/android/server/am/InstrumentationReporter$Report;
.super Ljava/lang/Object;
.source "InstrumentationReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/InstrumentationReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Report"
.end annotation


# instance fields
.field final mName:Landroid/content/ComponentName;

.field final mResultCode:I

.field final mResults:Landroid/os/Bundle;

.field final mType:I

.field final mWatcher:Landroid/app/IInstrumentationWatcher;

.field final synthetic this$0:Lcom/android/server/am/InstrumentationReporter;


# direct methods
.method constructor <init>(Lcom/android/server/am/InstrumentationReporter;ILandroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/InstrumentationReporter;
    .param p2, "type"    # I
    .param p3, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p4, "name"    # Landroid/content/ComponentName;
    .param p5, "resultCode"    # I
    .param p6, "results"    # Landroid/os/Bundle;

    .line 107
    iput-object p1, p0, Lcom/android/server/am/InstrumentationReporter$Report;->this$0:Lcom/android/server/am/InstrumentationReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p2, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mType:I

    .line 109
    iput-object p3, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 110
    iput-object p4, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    .line 111
    iput p5, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    .line 112
    iput-object p6, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    .line 114
    invoke-interface {p3}, Landroid/app/IInstrumentationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 115
    return-void
.end method
