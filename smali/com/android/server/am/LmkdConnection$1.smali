.class Lcom/android/server/am/LmkdConnection$1;
.super Ljava/lang/Object;
.source "LmkdConnection.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/LmkdConnection;->connect()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LmkdConnection;


# direct methods
.method constructor <init>(Lcom/android/server/am/LmkdConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/LmkdConnection;

    .line 146
    iput-object p1, p0, Lcom/android/server/am/LmkdConnection$1;->this$0:Lcom/android/server/am/LmkdConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 148
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection$1;->this$0:Lcom/android/server/am/LmkdConnection;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/LmkdConnection;->access$000(Lcom/android/server/am/LmkdConnection;Ljava/io/FileDescriptor;I)I

    move-result v0

    return v0
.end method
