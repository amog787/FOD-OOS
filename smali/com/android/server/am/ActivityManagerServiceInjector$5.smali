.class Lcom/android/server/am/ActivityManagerServiceInjector$5;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceInjector;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 624
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$5;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$5;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAllowLaunchBackground:Z

    .line 628
    return-void
.end method
