.class Lcom/android/server/ActivityTriggerService$LocalRunnable;
.super Ljava/lang/Object;
.source "ActivityTriggerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ActivityTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalRunnable"
.end annotation


# instance fields
.field private event:I

.field private lvCode:J

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private procName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lvCode"    # J
    .param p4, "procName"    # Ljava/lang/String;
    .param p5, "pid"    # I
    .param p6, "event"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->packageName:Ljava/lang/String;

    .line 91
    iput-wide p2, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->lvCode:J

    .line 92
    iput-object p4, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->procName:Ljava/lang/String;

    .line 93
    iput p5, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->pid:I

    .line 94
    iput p6, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->event:I

    .line 95
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->packageName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->lvCode:J

    iget-object v3, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->procName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->pid:I

    iget v5, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->event:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/ActivityTriggerService;->notifyAction_native(Ljava/lang/String;JLjava/lang/String;II)V

    .line 99
    return-void
.end method
