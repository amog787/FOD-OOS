.class Landroid/os/OverlayablePolicy$Stub$Proxy;
.super Ljava/lang/Object;
.source "OverlayablePolicy.java"

# interfaces
.implements Landroid/os/OverlayablePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OverlayablePolicy$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/os/OverlayablePolicy;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/os/OverlayablePolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 69
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/os/OverlayablePolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-static {}, Landroid/os/OverlayablePolicy$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
