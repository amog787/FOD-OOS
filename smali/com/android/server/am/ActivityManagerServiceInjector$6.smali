.class Lcom/android/server/am/ActivityManagerServiceInjector$6;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;->sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$stopReason:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$stopReason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$6;->val$stopReason:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V

    .line 517
    return-void
.end method
