import 'package:flutter/material.dart';
import 'package:flutter_portafolio/particles_animations/ui/pages/from_center_particles.dart';
import 'package:flutter_portafolio/particles_animations/ui/pages/multiple_emitters_particles.dart';
import 'package:google_fonts/google_fonts.dart';

class ParticlesAnimationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Card(
                child: ListTile(
                  title: Text(
                    'Single Emitter from center',
                    style: GoogleFonts.merriweatherSans(),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const FromCenterParticles(),
                      ),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Multiple Emitters',
                    style: GoogleFonts.merriweatherSans(),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const MultipleEmittersParticles(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
