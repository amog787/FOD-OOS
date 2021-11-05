.class Lcom/android/server/uri/UriPermissionOwner$ExternalToken;
.super Landroid/os/Binder;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriPermissionOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExternalToken"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/uri/UriPermissionOwner;


# direct methods
.method constructor <init>(Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 43
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/uri/UriPermissionOwner;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getOwner()Lcom/android/server/uri/UriPermissionOwner;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/uri/UriPermissionOwner;

    return-object v0
.end method
