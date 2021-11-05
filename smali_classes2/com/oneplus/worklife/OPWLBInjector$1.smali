.class Lcom/oneplus/worklife/OPWLBInjector$1;
.super Landroid/database/ContentObserver;
.source "OPWLBInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/worklife/OPWLBInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/worklife/OPWLBInjector;


# direct methods
.method constructor <init>(Lcom/oneplus/worklife/OPWLBInjector;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/worklife/OPWLBInjector;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBInjector$1;->this$0:Lcom/oneplus/worklife/OPWLBInjector;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 70
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector$1;->this$0:Lcom/oneplus/worklife/OPWLBInjector;

    invoke-static {v0}, Lcom/oneplus/worklife/OPWLBInjector;->access$000(Lcom/oneplus/worklife/OPWLBInjector;)I

    move-result v0

    .line 71
    .local v0, "mode":I
    iget-object v1, p0, Lcom/oneplus/worklife/OPWLBInjector$1;->this$0:Lcom/oneplus/worklife/OPWLBInjector;

    invoke-static {v1}, Lcom/oneplus/worklife/OPWLBInjector;->access$100(Lcom/oneplus/worklife/OPWLBInjector;)V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Mode changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBInjector$1;->this$0:Lcom/oneplus/worklife/OPWLBInjector;

    invoke-static {v2}, Lcom/oneplus/worklife/OPWLBInjector;->access$000(Lcom/oneplus/worklife/OPWLBInjector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " BreakMode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBInjector$1;->this$0:Lcom/oneplus/worklife/OPWLBInjector;

    invoke-static {v2}, Lcom/oneplus/worklife/OPWLBInjector;->access$200(Lcom/oneplus/worklife/OPWLBInjector;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPSystemWLBHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method
