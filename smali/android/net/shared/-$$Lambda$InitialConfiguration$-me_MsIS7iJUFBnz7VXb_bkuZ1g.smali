.class public final synthetic Landroid/net/shared/-$$Lambda$InitialConfiguration$-me_MsIS7iJUFBnz7VXb_bkuZ1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/net/LinkAddress;


# direct methods
.method public synthetic constructor <init>(Landroid/net/LinkAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/shared/-$$Lambda$InitialConfiguration$-me_MsIS7iJUFBnz7VXb_bkuZ1g;->f$0:Landroid/net/LinkAddress;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/net/shared/-$$Lambda$InitialConfiguration$-me_MsIS7iJUFBnz7VXb_bkuZ1g;->f$0:Landroid/net/LinkAddress;

    check-cast p1, Landroid/net/IpPrefix;

    invoke-static {v0, p1}, Landroid/net/shared/InitialConfiguration;->lambda$isValid$0(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z

    move-result p1

    return p1
.end method
