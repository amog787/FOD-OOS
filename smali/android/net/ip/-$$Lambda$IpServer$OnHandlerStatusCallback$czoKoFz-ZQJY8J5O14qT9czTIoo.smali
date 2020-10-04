.class public final synthetic Landroid/net/ip/-$$Lambda$IpServer$OnHandlerStatusCallback$czoKoFz-ZQJY8J5O14qT9czTIoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/ip/IpServer$OnHandlerStatusCallback;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/ip/IpServer$OnHandlerStatusCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/-$$Lambda$IpServer$OnHandlerStatusCallback$czoKoFz-ZQJY8J5O14qT9czTIoo;->f$0:Landroid/net/ip/IpServer$OnHandlerStatusCallback;

    iput p2, p0, Landroid/net/ip/-$$Lambda$IpServer$OnHandlerStatusCallback$czoKoFz-ZQJY8J5O14qT9czTIoo;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/-$$Lambda$IpServer$OnHandlerStatusCallback$czoKoFz-ZQJY8J5O14qT9czTIoo;->f$0:Landroid/net/ip/IpServer$OnHandlerStatusCallback;

    iget v1, p0, Landroid/net/ip/-$$Lambda$IpServer$OnHandlerStatusCallback$czoKoFz-ZQJY8J5O14qT9czTIoo;->f$1:I

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer$OnHandlerStatusCallback;->lambda$onStatusAvailable$0$IpServer$OnHandlerStatusCallback(I)V

    return-void
.end method
