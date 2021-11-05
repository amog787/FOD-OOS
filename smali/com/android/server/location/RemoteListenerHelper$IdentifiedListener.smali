.class public Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/RemoteListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdentifiedListener"
.end annotation


# instance fields
.field private final mCallerIdentity:Lcom/android/server/location/CallerIdentity;

.field private final mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private final mRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTRequest;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/RemoteListenerHelper;
    .param p4, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;TT",
            "Listener;",
            "Lcom/android/server/location/CallerIdentity;",
            ")V"
        }
    .end annotation

    .line 268
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>.IdentifiedListener;"
    .local p2, "request":Ljava/lang/Object;, "TTRequest;"
    .local p3, "listener":Landroid/os/IInterface;, "TTListener;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p3, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mListener:Landroid/os/IInterface;

    .line 270
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mRequest:Ljava/lang/Object;

    .line 271
    iput-object p4, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 272
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;Lcom/android/server/location/RemoteListenerHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/RemoteListenerHelper;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Landroid/os/IInterface;
    .param p4, "x3"    # Lcom/android/server/location/CallerIdentity;
    .param p5, "x4"    # Lcom/android/server/location/RemoteListenerHelper$1;

    .line 262
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>.IdentifiedListener;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Ljava/lang/Object;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;)Landroid/os/IInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    .line 262
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mListener:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;)Lcom/android/server/location/CallerIdentity;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    .line 262
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    return-object v0
.end method


# virtual methods
.method public getRequest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTRequest;"
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTRequest;TTListener;>.IdentifiedListener;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mRequest:Ljava/lang/Object;

    return-object v0
.end method
